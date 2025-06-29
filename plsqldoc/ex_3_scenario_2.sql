CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(p_dept VARCHAR2, p_bonus_percent NUMBER) IS
BEGIN
  UPDATE Employees
  SET Salary = Salary + (Salary * p_bonus_percent / 100)
  WHERE Department = p_dept;
  COMMIT;
END UpdateEmployeeBonus;
/
