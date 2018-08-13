# expenses_automation

The aims of this project are automate the manual review of my expenses that I carry out each month. This involves:
* Automating ingestion of financial statements in `.csv` or `.xlsx` format
* Automating the categorisation of each transaction into e.g. `travel`, `food` etc. This will require some machine 
learning, although will initially be carried out manually by asking the user to label each transaction. This manual 
method will still be quicker and easier than the current method, and has the secondary use of creating a labelled 
dataset for the ML model to be trained on
* Calculating the expenditure in each category and providing summary statistics related to a pre-defined budget. This
 will include e.g. average expenditures (monthly, yearly etc.) and a forecast based on previous months/years.