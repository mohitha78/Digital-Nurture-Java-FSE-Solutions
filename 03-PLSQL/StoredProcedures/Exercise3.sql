-------------------------------------------------------------
-- Exercise 3: Stored Procedures
-------------------------------------------------------------

-------------------------------------------------------------
-- Drop Tables (Ignore errors if tables do not exist)
-------------------------------------------------------------

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Accounts';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Employees';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/

-------------------------------------------------------------
-- Create Accounts Table
-------------------------------------------------------------

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER
);

-------------------------------------------------------------
-- Create Employees Table
-------------------------------------------------------------

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER
);

-------------------------------------------------------------
-- Insert Sample Data
-------------------------------------------------------------

INSERT INTO Accounts VALUES (101,'Rahul','Savings',10000);
INSERT INTO Accounts VALUES (102,'Priya','Savings',15000);
INSERT INTO Accounts VALUES (103,'Amit','Current',8000);

INSERT INTO Employees VALUES (1,'Rohan','IT',50000);
INSERT INTO Employees VALUES (2,'Sneha','HR',45000);
INSERT INTO Employees VALUES (3,'Arjun','IT',60000);

COMMIT;

-------------------------------------------------------------
-- Display Initial Data
-------------------------------------------------------------

SELECT * FROM Accounts;
SELECT * FROM Employees;

-------------------------------------------------------------
-- Scenario 1
-- Process Monthly Interest
-------------------------------------------------------------

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
AS
BEGIN
    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType='Savings';

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Monthly interest processed successfully.');
END;
/

-------------------------------------------------------------
-- Execute Procedure
-------------------------------------------------------------

BEGIN
    ProcessMonthlyInterest;
END;
/

-------------------------------------------------------------
-- Verify Scenario 1
-------------------------------------------------------------

SELECT * FROM Accounts;

-------------------------------------------------------------
-- Scenario 2
-- Update Employee Bonus
-------------------------------------------------------------

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    dept_name IN VARCHAR2,
    bonus_percent IN NUMBER
)
AS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * bonus_percent / 100)
    WHERE Department = dept_name;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Employee bonus updated successfully.');
END;
/

-------------------------------------------------------------
-- Execute Procedure
-------------------------------------------------------------

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

-------------------------------------------------------------
-- Verify Scenario 2
-------------------------------------------------------------

SELECT * FROM Employees;

-------------------------------------------------------------
-- Scenario 3
-- Transfer Funds
-------------------------------------------------------------

CREATE OR REPLACE PROCEDURE TransferFunds(
    fromAccount IN NUMBER,
    toAccount IN NUMBER,
    amount IN NUMBER
)
AS

    currentBalance NUMBER;

BEGIN

    SELECT Balance
    INTO currentBalance
    FROM Accounts
    WHERE AccountID = fromAccount;

    IF currentBalance >= amount THEN

        UPDATE Accounts
        SET Balance = Balance - amount
        WHERE AccountID = fromAccount;

        UPDATE Accounts
        SET Balance = Balance + amount
        WHERE AccountID = toAccount;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Fund transfer successful.');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance.');

    END IF;

END;
/

-------------------------------------------------------------
-- Execute Procedure
-------------------------------------------------------------

BEGIN
    TransferFunds(101,103,2000);
END;
/

-------------------------------------------------------------
-- Verify Scenario 3
-------------------------------------------------------------

SELECT * FROM Accounts;
SELECT * FROM Employees;