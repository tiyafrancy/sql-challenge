
# Module 9 Challenge

For this SQL challenge, we’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, we’ll perform data modeling, data engineering, and data analysis, respectively. 
We are using the DBeaver free open source database management tool that allows users to interact with various databases, including PostgresSQL. 

![Screenshot 2025-02-27 at 11 43 05 AM](https://github.com/user-attachments/assets/416be32e-43c4-4851-b60d-f5f454c2ddee)

Inside our postgres Databases, we have created a new database called **'sql-challenge'**, to create and store all the tables and scripts we are using for completing this challenge.
To view the tables we have created, go through **sql-challenge -> Schemas -> public -> Tables** 
we are provided with 6 csv files. I have stored it inside the 'data' folder in the repository. Based on these csv files, we have created our tables.

## Data Modeling

To create our Entity Relationship Diagram, we used a free tool like QuickDBD to easily do the task. 



![Screenshot 2025-02-27 at 12 06 28 PM](https://github.com/user-attachments/assets/5a134200-0b49-42c4-8bef-263df328be4c)

We can EXPORT the file we created and I have included the files, QuickDBD-pmd.sql and QuickDBD-ERD.png inside the EmployeeSQL folder.

## Data Engineering

We used the csv files to create the tables, and based on their needs, we have set primary key, composite key and foreign keys on each tables.
EmployeeSQL_tables.sql contains the detailed code we used to create tables. We can access this script inside the EmployeeSQL folder.

After creating the tables, we import the data for the corresponding tables from the provided CSV files.
To IMPORT the data, we have to right click on the table name and click the Import Data and from the pop up, select the corresponding CSV file.

![Screenshot 2025-02-27 at 12 40 51 PM](https://github.com/user-attachments/assets/83a7898c-2355-455b-80bf-04beb7f9fade)

By double clicking the table name, we can view the imported data under the Data tab.

![Screenshot 2025-02-27 at 12 43 31 PM](https://github.com/user-attachments/assets/ec4b12a7-56a9-455d-bd07-e82b6fa02d01)

We can also view the ER Diagram and Properties, by double clicking the table name

![Screenshot 2025-02-27 at 12 45 27 PM](https://github.com/user-attachments/assets/99c633fe-c2da-4fb7-9b65-b6c2125f9467)


## Data Analysis

We can run each query listed inside the script, 'EmployeeSQL_queries.sql' to get the desired results. We can find this file inside the EmployeeSQL folder.

![Screenshot 2025-02-27 at 12 46 18 PM](https://github.com/user-attachments/assets/f5162fec-91fa-4c96-9930-141cb0d019a4)

We can execute each query by selecting the run button as shown in the above image. The results can be viewed at the bottom of the script.

![Screenshot 2025-02-27 at 12 49 32 PM](https://github.com/user-attachments/assets/9765bb2f-2e64-41ec-8721-e94024a2a45c)


# Acknowledgement

I have done this challenge with the help of my Instructor and some internet searches.








