# Exercise 3: Stored Procedures

## Objective

Implement PL/SQL stored procedures to automate common banking operations such as processing monthly interest, updating employee bonuses, and transferring funds between customer accounts.

## Scenarios Implemented

### Scenario 1: Process Monthly Interest

* Created the `ProcessMonthlyInterest` stored procedure.
* Applied a 1% monthly interest to all savings accounts.
* Updated account balances automatically.

### Scenario 2: Update Employee Bonus

* Created the `UpdateEmployeeBonus` stored procedure.
* Accepted the department name and bonus percentage as input parameters.
* Updated employee salaries based on the specified department.

### Scenario 3: Transfer Funds

* Created the `TransferFunds` stored procedure.
* Accepted source account, destination account, and transfer amount as parameters.
* Verified that the source account had sufficient balance before transferring funds.
* Updated both account balances after a successful transfer.

## Concepts Used

* PL/SQL Stored Procedures
* Procedure Parameters
* SQL UPDATE Statements
* Conditional Statements (IF)
* Variables
* COMMIT
* DBMS_OUTPUT
* Data Validation
* Transaction Processing

## Files Included

* Exercise3.sql
* Output1.png
* Output2.png
* Output3.png

## Result

Successfully implemented three PL/SQL stored procedures for banking operations. The procedures correctly processed monthly interest for savings accounts, updated employee salaries based on department and bonus percentage, and securely transferred funds between accounts after validating the available balance.

