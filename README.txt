DESCRIPTION
This package cleans and prepares the US Counties COVID-19 Weather/SocioHealth data and performs Multiple Linear Regression analysis and Tableau data visualization.

INSTALLATION
1. Download the data set from Kaggle by following this link: https://www.kaggle.com/datasets/johnjdavisiv/us-counties-covid19-weather-sociohealth-data
2. Save the downloaded CSV files to the "data" directory in the "CSE6242-Project" GitHub repository
3. From the "code" directory in the "CSE6242-Project" GitHub repository, run the "clean_and_prepare_data" Jupyter notebook
4. From the "code" directory in the "CSE6242-Project" GitHub repository, run the "perform_data_imputation" Jupyter notebook
5. From the "code" directory in the "CSE6242-Project" GitHub repository, run the "tableau_data" Jupyter notebook
6. From the "code" directory in the "CSE6242-Project" GitHub repository, run the "create_data_with_diffs" Jupyter notebook
7. From the "code" directory in the "CSE6242-Project" GitHub repository, run the "linear_regression_modeling" R script
8. To be able to open the "tableau_data_with_diffs.csv" in Tableau, open the file in Excel and do the following:
	a. Save the file as an Excel workbook (.xlsx extension) and then close this file
	b. Open the Excel workbook file and re-save it as a Comma Separated Values file (.csv extension) or Macintosh Comma Separated Values NOT a CSV UTF-8

EXECUTION
1. Open the "tableau_book.twb" file from the "tableau" directory in the "CSE6242-Project" GitHub repository
2. Add the "tableau_data_with_diffs.csv" file to the Tableau workbook through "Data Source" -> "Connections" -> "Add"
3. Run the "rserve.R" script from the "code" directory in the "CSE6242-Project" GitHub repository
4. In Tableau, select "Help" -> "Settings and Performance" -> "Manage Analytics Extension Connection..."
	a. Select "RServe" for "Select an Analytics Extension"
	b. Select "localhost" for "Server" and enter "6311" under "Port"
	c. Press "Test Connection" to make sure it's running
		i. You should see "Successfully connected to the analytics extension"
	d. Click "OK" to finish
5. The Tableau workbook is now ready for user interaction