# Pewlett-Hackard-Analysis
## Week 7 Challenge 

## Overview of the analysis
Analyzing Pewlett-Hackard's human resources data for a large company for retiring employees.  6 csv files were provided as data to load into the 6 database tables created in PostgreSQL.  The data consists of employee information listed in various tables.  The database is built based on the information provided by the ERD we created in this module.

![EmployeeDB](https://user-images.githubusercontent.com/83428759/127919205-fda708ee-630e-4e9e-9547-c510423c75e6.png)


### Resources
* PostgreSQL / pgAdmin4

## Results
* 3 tables were created by the original 6 tables loaded with the csv data provided
  * Current Employees born between 1/1/1952 and 12/31/1955 (does not contain the same hire date requirement as in the modules)
  * Number of each title retiring
  * Number of current employees with each title (all employees, not just those retiring)
  * Current Employees born in 1965 for the mentorship program. Current Employees are referenced by to_date = '9999-01-01'
## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Based on the retiring titles table we created, we see that there are 29414 Senior Engineers, 28254 Senior Staff, 14222 Engineers, 12242 Staff, 4502 Technique Leaders, 1761 Assistant Engineers, and 2 manager retirees. There is a large amount of vacancies that will need to be filled.

![retiring titles](https://user-images.githubusercontent.com/83428759/127922295-c2b13faf-d226-4320-9093-5b5f9c85a5b1.png)



### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are 1549 total employees that are qualified for the mentorship program, this appears to be far less than the vacancy positions that will result from the "silver tsunami".

![mentorship elgibility count](https://user-images.githubusercontent.com/83428759/127922312-b4b97b52-e56c-45dd-8dc7-9931e1016366.png)

