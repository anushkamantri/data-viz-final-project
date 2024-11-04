# Data Visualisation Final Project: Say Cheese! 🧀

## Topic
Our project focuses on analysing the unique qualities and production patterns of cheeses from various regions. Cheese is a beloved food worldwide (and for good reason!), and its characteristics can vary widely depending on where it is made, the type of milk used, and how it is produced. Through this project, we aim to dive into the details of cheese data to reveal regional trends, production preferences, and other key factors that shape each cheese’s distinctive qualities.
## Dataset
The [dataset](https://github.com/rfordatascience/tidytuesday/blob/master/data/2024/2024-06-04/readme.md) we’re using for this project includes a broad array of information about cheeses, covering details such as name, region of origin, production methods, milk types, fat content, and other defining characteristics, taken from cheese.com. This comprehensive collection of data allows us to examine both qualitative aspects (like milk type and physical attributes) and quantitative factors (such as fat percentage and age) across different cheeses. Each entry in the dataset represents a unique cheese, providing specific insights that let us compare attributes across various cheese types and regions.

| variable | class | description |
| --- | --- | --- |
| cheese | character | Name of the cheese. |
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





