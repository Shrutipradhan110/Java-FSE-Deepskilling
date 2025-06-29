CREATE OR REPLACE PACKAGE EmployeeManagement AS
  PROCEDURE HireEmployee(p_id NUMBER, p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER, p_dept VARCHAR2, p_hire DATE);
  PROCEDURE UpdateEmployee(p_id NUMBER, p_salary NUMBER);
  FUNCTION GetAnnualSalary(p_id NUMBER) RETURN NUMBER;
END EmployeeManagement;
/
CREATE OR REPLACE PACKAGE BODY EmployeeManagement AS

  PROCEDURE HireEmployee(p_id NUMBER, p_name VARCHAR2, p_position VARCHAR2, p_salary NUMBER, p_dept VARCHAR2, p_hire DATE) IS
  BEGIN
    INSERT INTO Employees(EmployeeID, Name, Position, Salary, Department, HireDate)
    VALUES(p_id, p_name, p_position, p_salary, p_dept, p_hire);
    DBMS_OUTPUT.PUT_LINE('Employee hired: ' || p_name);
  END;

  PROCEDURE UpdateEmployee(p_id NUMBER, p_salary NUMBER) IS
  BEGIN
    UPDATE Employees
    SET Salary = p_salary
    WHERE EmployeeID = p_id;
    DBMS_OUTPUT.PUT_LINE('Salary updated for Employee ID: ' || p_id);
  END;

  FUNCTION GetAnnualSalary(p_id NUMBER) RETURN NUMBER IS
    v_salary NUMBER;
  BEGIN
    SELECT Salary INTO v_salary FROM Employees WHERE EmployeeID = p_id;
    RETURN v_salary * 12;
  END;

END EmployeeManagement;
/
BEGIN
  EmployeeManagement.HireEmployee(5, 'sneha Joshi', 'Analyst', 55000, 'Finance', TO_DATE('2023-11-20', 'YYYY-MM-DD'));
  EmployeeManagement.UpdateEmployee(5, 60000);
  DBMS_OUTPUT.PUT_LINE('Annual Salary of Employee 5: ' || EmployeeManagement.GetAnnualSalary(5));
END;
/
