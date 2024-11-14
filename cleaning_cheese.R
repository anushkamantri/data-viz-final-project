library(tidyverse)
library(here)
library(fs)
library(rvest)
library(polite)
library(glue)

working_dir <- here::here("data", "2024", "2024-06-04")
session <- polite::bow("https://www.cheese.com/")

# Get the full list of cheeses. ------------------------------------------------
cheeses <- purrr::map(
  letters,
  \(letter) {
    this_path <- glue::glue("alphabetical/{letter}")
    session <- polite::nod(session, this_path)
    pages <- polite::scrape(session, query = list(per_page = 100)) |>
      rvest::html_elements(".page-link") |>
      rvest::html_text2() |>
      readr::parse_integer()
    purrr::map(
      pages,
      \(page) {
        cheeses <- polite::scrape(session, query = list(per_page = 100, page = page)) |>
          rvest::html_elements(".cheese-item h3 a")
        tibble::tibble(
          cheese = rvest::html_text2(cheeses),
          url = rvest::html_attr(cheeses, "href") |>
            rvest::url_absolute(base = session$url)
        )
      }
    ) |>
      purrr::list_rbind()
  }
) |>
  purrr::list_rbind()

# Functions for two types of cleaning. -----------------------------------------
fetch_summary_item <- function(summary_block, css) {
  summary_block |> 
    rvest::html_element(css) |> 
    rvest::html_text2()
}

fetch_summary_items <- function(summary_block, css) {
  summary_block |> 
    rvest::html_elements(css) |> 
    rvest::html_text2() |> 
    stringr::str_flatten_comma(na.rm = TRUE)
}

# Fetch details page-by-page ---------------------------------------------------
# This took a very long time to process.
cheese_details <- purrr::map(
  cheeses$url,
  \(cheese_url) {
    session <- polite::nod(session, cheese_url)
    summary_block <- polite::scrape(session) |> 
      rvest::html_elements(".summary-points")
    tibble::tibble(
      url = cheese_url,
      milk = summary_block |> 
        fetch_summary_items(".summary_milk a"),
      country = summary_block |>
        fetch_summary_items(".summary_country a"),
      region = summary_block |> 
        fetch_summary_item(".summary_region"),
      family = summary_block |> 
        fetch_summary_item(".summary_family"),
      type = summary_block |> 
        fetch_summary_item(".summary_moisture_and_type"),
      fat_content = summary_block |> 
        fetch_summary_item(".summary_fat"),
      calcium_content = summary_block |> 
        fetch_summary_item(".summary_calcium"),
      texture = summary_block |> 
        fetch_summary_items(".summary_texture a"),
      rind = summary_block |> 
        fetch_summary_item(".summary_rind"),
      color = summary_block |> 
        fetch_summary_item(".summary_tint"),
      flavor = summary_block |> 
        fetch_summary_item(".summary_taste"),
      aroma = summary_block |> 
        fetch_summary_item(".summary_smell"),
      vegetarian = summary_block |> 
        fetch_summary_item(".summary_vegetarian"),
      vegan = summary_block |> 
        fetch_summary_item(".summary_vegan"),
      synonyms = summary_block |> 
        fetch_summary_item(".summary_synonym"),
      alt_spellings = summary_block |> 
        fetch_summary_item(".summary_alt_spelling"),
      producers = summary_block |> 
        fetch_summary_item(".summary_producer")
    )
  }
) |> 
  purrr::list_rbind()

cheese_details <- cheese_details |> 
  dplyr::mutate(
    dplyr::across(
      c(region:calcium_content, rind:producers),
      ~ stringr::str_remove(.x, "^[^:]+: ")
    ),
    dplyr::across(
      c(vegetarian, vegan),
      ~ dplyr::case_match(
        .x,
        "no" ~ FALSE,
        "yes" ~ TRUE,
        .default = NA
      )
    )
  )

cheeses <- cheeses |> 
  dplyr::left_join(cheese_details, by = dplyr::join_by(url))

# Save -------------------------------------------------------------------------
readr::write_csv(
  cheeses,
  fs::path(working_dir, "cheeses.csv")
)