# Expenses automation

The aims of this project are to automate the manual review of my expenses that I carry out each month in Excel. The 
project will involve:
* Automating the ingestion of financial statements in `.csv` or `.xlsx` format
* Creating a database of all my expenses data and providing a python interface to it
* Automating the categorisation of each transaction into e.g. `travel`, `food` etc. This will require some machine 
learning, although will initially be carried out manually by asking the user to label each transaction. This manual 
method will still be quicker and easier than the current method, and has the secondary use of creating a labelled 
dataset for the ML model to be trained on
* Calculating the expenditure in each category and producing summary statistics related to a pre-defined budget. This
 will include e.g. average expenditures (monthly, yearly etc.) and a forecast based on previous months/years.
* Creating a dashboard displaying these statistics in an elegant and insightful fashion (I'll probably use `seaborn` 
here). The interface will allow the user to see statistics for different date ranges and bank accounts.
