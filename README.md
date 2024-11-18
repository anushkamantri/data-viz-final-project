# Data Visualisation Final Project:  Olympics

## Topic
Our project centers on analyzing global patterns in Olympic success, with a focus on the relationships between athlete demographics, country characteristics, and medal outcomes. The Olympics are a stage where athletic excellence intersects with cultural, economic, and regional dynamics, making it an ideal context for uncovering unique insights through data visualization. By leveraging both athlete and country-level data, we aim to identify key trends and factors that shape Olympic performance.

## Dataset
The [dataset](https://github.com/rfordatascience/tidytuesday/blob/master/data/2024/2024-06-04/readme.md) we’re using for this project includes a broad array of information about cheeses, covering details such as name, region of origin, production methods, milk types, fat content, and other defining characteristics, taken from cheese.com. This comprehensive collection of data allows us to examine both qualitative aspects (like milk type and physical attributes) and quantitative factors (such as fat percentage and age) across different cheeses. Each entry in the dataset represents a unique cheese, providing specific insights that let us compare attributes across various cheese types and regions.

| variable | class | description |
| --- | --- | --- |

From the Olympics Dataset
| id | Integer	| Unique identifier for each athlete.
| name |	Character	| Name of the athlete.
| sex |	Character	| Gender of the athlete (M/F).
| age |	Numeric	| Age of the athlete.
| height |	Numeric |	Height of the athlete (in cm).
| weight |	Numeric |	Weight of the athlete (in kg).
| team |	Character	| The country or team represented by the athlete.
| noc |	Character	| National Olympic Committee (three-letter country code).
| games |	Character |	Edition of the Olympics (e.g., "2000 Summer").
| year |	Integer	| Year of the Olympics.
| season|	Character	| Season of the Olympics ("Summer" or "Winter").
| city |	Character	| Host city of the Olympics.
| sport |	Character	| Sport category participated in by the athlete.
| event |	Character	| Specific event participated in by the athlete.
| medal |	Character	|Medal won (Gold, Silver, Bronze, or None)


From the GDP, Population, and Energy Dataset
Variable	Class	Description
country	Character	Name of the country.
iso3c / iso_code	Character	ISO-3 country code.
year	Integer	Year of the data.
population	Numeric	Total population of the country.
gdp	Numeric	Gross Domestic Product (GDP) in current USD.
GDPpercap	Numeric	GDP per capita.
biofuel, coal, gas, hydro, nuclear, oil, solar, wind	Numeric	Energy sources in use and their contribution to total energy production.
electricity_generation	Numeric	Total electricity generated (in GWh).
electricity_demand	Numeric	Total electricity consumption (in GWh).
electricity_share_energy	Numeric	Share of electricity in total energy usage.
energy_per_capita	Numeric	Energy consumption per capita (in GWh).
energy_per_gdp	Numeric	Energy intensity (energy usage per GDP unit).
co2	Numeric	Total carbon dioxide emissions (in metric tons).
co2_per_capita	Numeric	Carbon dioxide emissions per capita (in metric tons).
co2_per_gdp	Numeric	Carbon dioxide emissions per GDP (in metric tons per USD).
total_ghg	Numeric	Total greenhouse gas emissions (in metric tons).
total_ghg_excluding_lucf	Numeric	Total greenhouse gas emissions excluding land-use changes.
continent	Character	Continent where the country is located.



| id | number | Unique identifier for each athlete |
| name | character | Name of the Athelate. |
| url | character | Location of the cheese's description at cheese.com |
| milk | character | The type of milk used for the cheese, when known. |
| country | character | The country or countries origin of the cheese. |
| region | character | The region in which the cheese is produced, either within the country of origin, or as a wider description of multiple countries. |
| family | character | The family to which the cheese belongs, if any. |
| type | character | The broad type or types to describe the cheese. |
| fat_content | character | The fat content of the cheese, as a percent or range of percents. |
| calcium_content | character | The calcium content of the cheese, when known. Values include units. |
| texture | character | The texture of the cheese. |
| rind | character | The type of rind used in producing the cheese. |
| color | character | The color of the cheese. |
| flavor | character | Characteristic(s) of the taste of the cheese. |
| aroma | character | Characteristic(s) of the smell of the cheese. |
| vegetarian | logical | Whether cheese.com considers the cheese to be vegetarian. |
| vegan | logical | Whether cheese.com considers the cheese to be vegan. |
| synonyms | character | Alternative names of the cheese. |
| alt_spellings | character | Alternative spellings of the name of the cheese (likely overlaps with synonyms). |
| producers | character | Known producers of the cheese. |

## Graphical and Statistical Techniques
To effectively portray our findings, we will use several graph types to make sure that we find the most suitable representation for each one.

To illustrate regional trends and cheese distribution patterns we aim to use (geographical) heatmaps. For example, we can visualise the correlation between textures with flavours to identify common pairings.

We will also use scatter plots for visualising relationships between different features, and to display the distribution of attributes like fat content across different cheese types or regions box plots and histograms will be the most suitable. 

Another graph we plan on creating a stacked bar chart in order to show the distribution of milk types (cow, goat, sheep, etc.) used in cheeses across different countries or regions. From this, we could examine how the type of milk used reflects regional livestock and traditions.

We also plan to utilise the various statistical methods we have learned in class to create and present visualisations and tell a meaningful story about cheeses:

**Descriptive Statistics:**
To understand the dataset and identify key figures, patterns, or outliers.

**Correlation Analysis:**
By analysing correlations between variables such as fat content, milk type, and region, we hope to uncover significant relationships.

**Regression Analysis:** 
We may use regression models to identify influential predictors to predict characteristics like flavour intensity or texture based on quantitative variables (such as fat content, milk type).





