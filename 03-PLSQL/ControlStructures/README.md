# Exercise 1: Control Structures

## Objective

Implement PL/SQL control structures to solve real-world banking scenarios using loops, conditional statements, and SQL operations.

## Scenarios Implemented

### Scenario 1: Loan Interest Discount

* Iterated through all customers using a FOR loop.
* Checked customers whose age is above 60 years.
* Applied a 1% discount to their loan interest rate.

### Scenario 2: VIP Customer Promotion

* Iterated through all customers.
* Checked customers with a balance greater than $10,000.
* Updated the `IsVIP` flag to `TRUE`.

### Scenario 3: Loan Due Reminder

* Retrieved loans due within the next 30 days.
* Displayed reminder messages using `DBMS_OUTPUT.PUT_LINE`.

## Concepts Used

* PL/SQL Blocks
* Variables
* FOR Loops
* IF Statements
* UPDATE Statements
* COMMIT
* SELECT Queries
* DBMS_OUTPUT
* Date Functions

## Files Included

* Exercise1.sql
* Output1.png
* Output2.png

## Result

Successfully implemented PL/SQL control structures to automate banking operations. The program correctly updates loan interest rates for eligible customers, promotes customers to VIP status based on account balance, and generates reminders for loans due within the next 30 days.

