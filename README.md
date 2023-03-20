# Loan Eligibility Prediction
A personal classification project to predict loan eligibility using Python machine learning based on a dataset containing information on customers' past transactions. I will attempt to follow instructions to deploy the resulting model as an active app using Streamlit.

# Project Inspiration:
The idea for this project came from a Blog post by [Jonathan Okah](https://blog.finxter.com/author/jonathanokah23424/) called "[How I Built and Deployed a Python Loan Eligibility Prediction App on Streamlit](https://blog.finxter.com/how-i-built-and-deployed-a-python-loan-eligibility-prediction-app-on-streamlit/?tl_inbound=1&tl_target_all=1&tl_form_type=1&tl_period_type=3&utm_source=newsletter&utm_medium=email&utm_campaign=project_python_loan_eligibility_prediction_app_on_streamlit&utm_term=2023-02-04)" posted on [Finxster](https://blog.finxter.com/finxter-mission/). 

I chose it for a couple reasons:
  1. It looked like it would be a fairly easy to replicate project for practice straight out of the gate after graduating my [Codeup](https://codeup.com/program/data-science/) Data Science course. 
  2. I am getting ready to begin my house buying search and thought it my be helpful to my endevours.
  3. I was very interested in the aspect of deploying the model as a functioning app using [Streamlit](https://jonaben1-loan-predicition-app-bnti80.streamlit.app/).

I'm hoping to add additional criteria features to the program such as Debt to Income Ratio, Percent Credit Card Debt, etc... to be more accurate and realistic in line with the requirements of a mortgage lender. These are the unseen factors of the data that are not recorded but had to be met in order to even be eligible for a loan in the first place.

Optionally as an extension to this project, I have found an SQL dataset in the Codeup database named home_credit that has over 300k historical loan records and an additional 48.7k applications.

# Project Overview:
This project creates a user interface form that takes in responses for specific features required to make a prediction on loan eligibility.

-------------------------------------------------- **STILL WORKING** --------------------------------------------------

# Project Goals:
* Create a model that effectively predicts Michelin food star award ratings based on content from the official Michelin review
* Provide a well-documented jupyter notebook that contains our analysis
* Produce a Final GitHub repository
* Present a Canva slide deck suitable for a general audience which summarizes our findings and documents the results with well-labeled visualizations


# Reproduction of this Data:
Can be accomplished by simply cloning this repository and running the final notebook as explained in the instructions below:

**Warning** If you are a fellow Codeup Alumni and decide to run the alternate version of this project pulling your own SQL from the Codeup database, you will need to pull each table individually and join them locally, otherwise it will timeout.

<details>
<summary><b>Reproduction Instructions:</b></summary><br>
<p align="left">    

* Clone the Repository using this code in your terminal ```git clone git@github.com:CodeupGourmands/Michelin_NLP_Capstone.git``` then run the ```mvp_notebook.ipynb``` Jupyter Notebook.  

* You will need to ensure the below listed files, at a minimum, are included in the repo in order to be able to run.
   * `mvp_notebook.ipynb`
   * `acquire.py`
   * `prepare.py`
   * `explore.py`
   * `model.py`  
<br>
</details>

<br>

# Initial Thoughts
Our initial thoughts are that country, cuisine, and words/groups of words (bigrams and trigrams) may be very impactful features to predict our target 'award' level. Another thought was that the price level and available facilities could also help determine the target 'award' level.

# The Plan
* Acquire initial data (CSV file) via `Kaggle` download
* Acquire review data using `Beautiful Soup` via 'get_michelin_pages' function in acquire file
* Clean and Prepare the data utilizing `RegEx` and string functions
* Explore data in search of significant relationships to target (Michelin Star Ratings) 
* Conduct statistical testing as necessary
<details>
<summary>▪︎ Answer 6 initial exploratory questions:</summary><br>
<p align="left">
    <b>Question 1.</b> What is the distribution of our target variable (award type)?
    <br>
    <b>Question 2.</b> What countries have the most Michelin restaurants?
    <br>
    <b>Question 3.</b> What is the average wordcount of restaurant reviews, by award type?
    <br>
    <b>Question 4.</b> Do three star Michelin restaurants have the highest sentiment score?
    <br>
    <b>Question 5.</b> What are the most frequent words used in Michelin Restaurant reviews?
    <br>
    <b>Question 6.</b> Do higher rated restaurants have more facilities?
    <br>
</details>

* Develop a Model to predict Award Category of Michelin restaurants:
    * Evaluate models on train and validate data using accuracy score
    * Select the best model based on the smallest difference in the accuracy score on the train and validate sets.
    * Evaluate the best model on test data

* Draw conclusions

# Data Dictionary:

<details>
<summary><b>Original Features:</b></summary><br>
<p align="left">    

|Feature    |Description       |
|:----------|:-----------------|
|name|Name of the awardee restaurant|
|address|Address of the awardee restaurant|
