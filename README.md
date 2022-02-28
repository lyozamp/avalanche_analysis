# Avalanche Analysis
Final project analysis of Avalanche data

# First Segment: Sketch It Out

## Communication Protocol:
In order to complete this analysis, we as a team have a communication plan the following: 

1. Attending in class session times via zoom, including Saturday office hours if needed.
2. Utilizing slack to share updates or ask quick questions.
3. If more time together to problem solve is needed, planned zoom meetings. 

Square: Lindsey is the team member in the square role responsible for the repository.

Triangle: Maya is the member in the triangle role who created a mockup of a machine learning model. Diagram that explains how it will work concurrently with the rest of the project steps.

Circle: Rylee and Meredith are the members in the circle role who created a mockup of a database with a set of the avalanche data. This will ensure the database will work seamlessly with the rest of the project.

X: All team members have decided what technologies will be used for each step of the project 

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

Analysing weather conditions are a critical piece of information for building avalanche forecasts or assessing avalanche hazard for a specific geographic areas. Historically avalanches pose a threat to anyone on snowy mountainsides and can be deadly because of their intensity and seeming unpredictability. By taking the data over the course of several years and multiple areas in Alaska and examine weather conditions during past avalanches we can predict what weather features increase the hazard of an avalanche occurring again based on those factors. 

# Third Segment: Plug It In

## Results: 

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/FI_Logistic_Regression_Plot.png)

![alt text](https://github.com/lyozamp/avalanche_analysis/blob/main/images/FI_Logistic_Regression_Summary.png)

# Fourth Segment: Put It All Together

## Summary:

