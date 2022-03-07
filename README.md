# Avalanche Analysis
Final project analysis of Avalanche data

# First Segment: Sketch It Out

## Overview of the Analysis:

The framework for this project was to analyze avalanche data from Snowbound Solutions LLC based out of Boise, ID and present our findings to the owner, Scott. This data was presented to us from Scott who is a family friend of Rylee's. As seen in our converted and cleaned daily_obs.csv file, observations range from January 2019 to December of 2021 and include different observation locations in Juneau, Alaska with various weather parameters noted as well as a hazard score. 

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Daily_Obs_Table.png)

We realize that although predicting natural phenomenons are relatively difficult, this analysis might help answer a key question: 

What weather features contribute most to Avalanche occurrences in Juneau, Alaska?

# Second Segment: Build the Pieces

## Resources:

Joined the avalanche_obs and daily_obs files provided by Snowbound Solutions LLC in PGAdmin, then created a connection string using SQLAlchemy to connect our Postgres database to our Jupyter notebook for our machine learning model.

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Table_Merge_Code.png)

Entity relationship diagram connecting the two files

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/ryleejensen/Avalanche_ERD.png)

Database: Postgres SQL

Machine Learning: Supervised Model

Coding: Python - Pandas

Visualization: Tableau

## Machine Learning Model

1. Description of preliminary data preprocessing:

During the preliminary data preprocessing, we converted the avalanche_occurred column to a yes/no binary column by replacing null values with no as well as replacing the observation dates with yes. Also, dropping null values in the data frame. Then dropped the observation dates and encoded our categorical columns such as the wind direction, sky cover, precipitation type, etc. Lastly, we scaled the data which is super important when training the model and giving each feature the same footing without any upfront importance.

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Clean_data.png)

2. Description of preliminary feature engineering and preliminary feature selection, including the decision-making process:

We decided on feature importance logistic regression in our supervised model because we are finding feature importance related to avalanche and hazard level so we kept all of the features since they are all important. 

3. Description of how data was split into training and testing sets:

We split the feature and target variables in to X and Y variables, X variable being the feature and Y being the target. Also, we used TRAIN_TEST_SPLIT to split the data in to train and test sets.

4. Explanation of model choice, including limitations and benefits:

We tried multiple directions but a feature importance supervised model helped answer our thesis question the best. A supervised model is the simplest model choice when it comes to optimizing performance criteria using experience and solving various types of real-world computation problems. A benefit specifically to our dataset is that it looks at what features are weighted more heavily and we can clearly look at what features matter by importance. One limitation of this type of model is it is tough to obtain complex relationships

## Purpose:

Analyzing weather conditions are a critical piece of information for building avalanche forecasts or assessing avalanche hazard for a specific geographic areas. Historically avalanches pose a threat to anyone on snowy mountainsides and can be deadly because of their intensity and seeming unpredictability. By taking the data over the course of several years and multiple areas in Alaska and examine weather conditions during past avalanches we can predict what weather features increase the hazard of an avalanche occurring again based on those factors. 

# Third Segment: Plug It In

## Results: 

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/FI_Logistic_Regression.png)
![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/FI_Logistic_Regression_Summary.png)

Results of feature importance logistic regression, how the contrasting features of avalanches weigh differently. Took features that weigh more heavily to continue our visualization. 

### Air Temps by Quarter Graph

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Airtemp_byQuarter.png)

The temperature average was lower in Q1 which is the winter months of January-March and there was significant amount of avalanches that occurred in Q1 when comparing to the avalanche occurrence by quarter graph.

### Counts of Different Precipitation Types Graph

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Counts_of_Precip_Type.png)

When reviewing the counts of different precipitation graph, 179 avalanches occurred when there was no precipitation but 49 avalanches happened when there was snow.

### Counts of Different Sky Cover Types Graph

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Sky_cover.png)

The majority of avalanches occurred on a clear day (no clouds), second overcast (completely covered), third obscured (foggy).

### New Snow Height by Quarters Graph

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/NewSnowHeight_byQuarter.png)

During Q1 which is again winter months from January-March, the most snow height accumulated and resulted in the most avalanches to occur. 

### Avalanche Occurrence by Quarter Graph

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Avalanche_Occurance_Quarterly.png)

Looking at Q1 over the three years, the most avalanches occurred and in relation the air temperatures were significantly lower all year round in Q1 as well as the most new snow height accumulated. 

### Hazard Count Graph

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/Hazard_count.png)

Weather predictions are really hard to predict because as we can see the most avalanches (148) occurred when Mike predicted only a hazard 2. When predicting a hazard 4, only 19 avalanches occurred with 92 that did not happen. 

## Tableau Story Board

Our Tableau Story Board of all our visualizations can be seen at this [link](https://public.tableau.com/app/profile/rylee.jensen/viz/Avalanche_Analysis/AvalancheAnalysis?publish=yes).

# Fourth Segment: Put It All Together

## Summary:
In summary, we know that none of this is revolutionary but it is good to have this analysis as a backup to answer the question we were originally asking. 

# Google Slides Presentation

This google slide presentation can be seen at this [link to slides](https://github.com/lyozamp/avalanche_analysis/blob/main/Avalanche_Presentation.pdf).
