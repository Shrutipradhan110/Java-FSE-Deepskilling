CREATE OR REPLACE PROCEDURE UpdateSalary(p_emp_id NUMBER, p_percentage NUMBER) IS
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM Employees WHERE EmployeeID = p_emp_id;
  IF v_count = 0 THEN
    RAISE_APPLICATION_ERROR(-20002, 'Employee ID not found');
  ELSE
    UPDATE Employees
    SET Salary = Salary + Salary * (p_percentage / 100)
    WHERE EmployeeID = p_emp_id;
  END IF;
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error updating salary: ' || SQLERRM);
END UpdateSalary;
/
