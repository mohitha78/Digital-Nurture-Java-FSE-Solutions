-- ==========================================================
-- Exercise 1 : Control Structures
-- PL/SQL Programming
-- ==========================================================

-------------------------------------------------------------
-- Create Tables
-------------------------------------------------------------

CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Age NUMBER,
    Balance NUMBER,
    IsVIP VARCHAR2(5)
);

CREATE TABLE Loans (
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    InterestRate NUMBER,
    DueDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-------------------------------------------------------------
-- Insert Sample Data
-------------------------------------------------------------

INSERT INTO Customers VALUES (1, 'Rahul', 65, 12000, 'FALSE');
INSERT INTO Customers VALUES (2, 'Priya', 45, 9000, 'FALSE');
INSERT INTO Customers VALUES (3, 'Amit', 70, 15000, 'FALSE');

INSERT INTO Loans VALUES (101, 1, 8.5, SYSDATE + 20);
INSERT INTO Loans VALUES (102, 2, 9.0, SYSDATE + 50);
INSERT INTO Loans VALUES (103, 3, 7.5, SYSDATE + 15);

COMMIT;

-------------------------------------------------------------
-- Display Initial Data
-------------------------------------------------------------

SELECT * FROM Customers;

SELECT * FROM Loans;

-------------------------------------------------------------
-- Scenario 1
-- Apply 1% Discount to Customers Above 60 Years
-------------------------------------------------------------

BEGIN
    FOR customer_record IN (
        SELECT CustomerID, Age
        FROM Customers
    )
    LOOP
        IF customer_record.Age > 60 THEN

            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = customer_record.CustomerID;

        END IF;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Scenario 1 Completed: Loan interest rates updated.');

END;
/

-------------------------------------------------------------
-- Verify Scenario 1
-------------------------------------------------------------

SELECT * FROM Loans;

-------------------------------------------------------------
-- Scenario 2
-- Promote Customers to VIP
-------------------------------------------------------------

BEGIN
    FOR customer_record IN (
        SELECT CustomerID, Balance
        FROM Customers
    )
    LOOP
        IF customer_record.Balance > 10000 THEN

            UPDATE Customers
            SET IsVIP = 'TRUE'
            WHERE CustomerID = customer_record.CustomerID;

        END IF;
    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Scenario 2 Completed: VIP status updated.');

END;
/

-------------------------------------------------------------
-- Verify Scenario 2
-------------------------------------------------------------

SELECT * FROM Customers;

-------------------------------------------------------------
-- Scenario 3
-- Print Reminder for Loans Due Within 30 Days
-------------------------------------------------------------

BEGIN
    FOR loan_record IN (
        SELECT c.Name,
               l.LoanID,
               l.DueDate
        FROM Customers c
        JOIN Loans l
        ON c.CustomerID = l.CustomerID
        WHERE l.DueDate <= SYSDATE + 30
    )
    LOOP

        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan '
            || loan_record.LoanID
            || ' for '
            || loan_record.Name
            || ' is due on '
            || TO_CHAR(loan_record.DueDate,'DD-MON-YYYY')
        );

    END LOOP;
END;
/

-------------------------------------------------------------
-- Final Data
-------------------------------------------------------------

SELECT * FROM Customers;

SELECT * FROM Loans;