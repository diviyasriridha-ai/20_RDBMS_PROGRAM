-- Create Employee Table
CREATE TABLE Employee (
    EmployeeID NUMBER(5),
    EmployeeName VARCHAR2(30),
    Salary NUMBER(10)
);

-- Create Trigger
CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('New Employee Record Inserted Successfully');
END;
/

-- Insert Employee Record
INSERT INTO Employee VALUES (101, 'Arun', 25000);

COMMIT;
