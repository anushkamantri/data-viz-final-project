# Data Visualisation Final Project:  Olympics

## Topic
Our project centers on analyzing global patterns in Olympic success, with a focus on examining how the Olympics impact the economic state of host nations (GDP and energy consumption), depending on whether the country is developed or developing. The Olympics represent a unique intersection of athletic excellence, cultural significance, and economic impact. Hosting the Olympics often involves substantial investments in infrastructure and resources, creating opportunities for economic growth but also posing potential challenges for nations with varying levels of development.
By leveraging both athlete and country-level data, this project seeks to uncover meaningful insights into the relationship between hosting the Olympics, economic performance, and energy consumption, while also identifying trends in athletic participation and success across countries. This analysis will provide a deeper understanding of the global implications of the Olympic Games and offer data-driven perspectives on their socioeconomic effects.

## Dataset
The dataset integrates individual athlete data with country-level attributes, enabling a comprehensive analysis that combines personal and national dimensions of Olympic performance. The Olympics dataset captures athlete demographics, participation, and performance, while the GDP and energy dataset provides macroeconomic indicators and energy usage data for host nations.


| variable | class | description |
| --- | --- | --- |

From the Olympics Dataset
| id | Integer	| Unique identifier for each athlete.| 
| name |	Character	| Name of the athlete.| 
| sex |	Character	| Gender of the athlete (M/F).| 
| age |	Numeric	| Age of the athlete.| 
| height |	Numeric |	Height of the athlete (in cm).| 
| weight |	Numeric |	Weight of the athlete (in kg).| 
| team |	Character	| The country or team represented by the athlete.| 
| noc |	Character	| National Olympic Committee (three-letter country code).| 
| games |	Character |	Edition of the Olympics | 
| year |	Integer	| Year of the Olympics.| 
| season|	Character	| Season of the Olympics.| 
| city |	Character	| Host city of the Olympics.| 
| sport |	Character	| Sport category participated in by the athlete.| 
| event |	Character	| Specific event participated in by the athlete.| 
| medal |	Character	|Medal won (Gold, Silver, Bronze, or None)| 


From the GDP, Population, and Energy Dataset
| country | Character	| Name of the country.| 
| iso3c iso_code	| Character| 	ISO-3 country code.| 
| year	| Integer | Year of the data.| 
| population| 	Numeric| 	Total population of the country.| 
| gdp	| Numeric	| Gross Domestic Product (GDP) in current USD.| 
| GDPpercap	| Numeric	| GDP per capita.| 
| biofuel, coal, gas, hydro, nuclear, oil, solar, wind	| Numeric |	Energy sources in use and their contribution to total energy production.|
| electricity_generation | 	Numeric	| Total electricity generated (in GWh).| 
| electricity_demand	| Numeric	| Total electricity consumption (in GWh).| 
| electricity_share_energy| 	Numeric	| Share of electricity in total energy usage.| 
| energy_per_capita| 	Numeric	| Energy consumption per capita (in GWh).| 
| energy_per_gdp	| Numeric	| Energy intensity (energy usage per GDP unit).| 
| co2 | 	Numeric| 	Total carbon dioxide emissions (in metric tons).| 
| co2_per_capita	| Numeric| 	Carbon dioxide emissions per capita (in metric tons).| 
| co2_per_gdp	| Numeric	| Carbon dioxide emissions per GDP (in metric tons per USD).| 
| total_ghg	| Numeric	| Total greenhouse gas emissions (in metric tons).| 
| total_ghg_excluding_lucf	| Numeric	| Total greenhouse gas emissions excluding land-use changes.| 
| continent	| Character	| Continent where the country is located.| 


## Graphical and Statistical Techniques
To effectively communicate our findings, we will utilize a range of graphical and statistical methods, carefully tailored to answer our research questions. These methods will ensure clarity and provide actionable insights.

Graphical Techniques
**Descriptive Statistics:**
Mosaic Plots: Display the number of athletes sent by country and highlight participation trends based on country development status (developed vs. developing).
Scatter Plots: Analyze the distribution of sports participation and medal outcomes by country development status and energy consumption patterns.
Stacked Bar Charts: Show medal proportions (gold, silver, bronze) for countries categorized by GDP and population size.
Time Series Analysis:
Line Charts: Illustrate trends in the number of athletes sent over time and how hosting the Olympics impacts participation levels.
Dual-Axis Plots: Compare GDP and energy consumption trends for host nations before, during, and after hosting the Olympics.
Geographical Heatmaps:
Map the geographical distribution of athletes, medal counts, and energy consumption across host nations.

Statistical Techniques
Descriptive Statistics: Summarize key variables such as GDP growth, energy usage, and medal counts, segmented by country type (developed vs. developing).

**Correlation Analysis:**
Investigate relationships between variables like GDP growth, energy consumption, and medal performance to identify significant patterns.

**Regression Analysis:** 
Use regression models to quantify the impact of hosting the Olympics on GDP and energy consumption.
Analyze how development status moderates the effects of hosting.
Comparative Analysis: Perform comparisons between host and non-host countries to evaluate differences in economic and energy impacts.




