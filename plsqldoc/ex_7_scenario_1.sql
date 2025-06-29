CREATE OR REPLACE PACKAGE CustomerManagement AS
  PROCEDURE AddCustomer(p_id NUMBER, p_name VARCHAR2, p_dob DATE, p_balance NUMBER);
  PROCEDURE UpdateCustomer(p_id NUMBER, p_balance NUMBER);
  FUNCTION GetCustomerBalance(p_id NUMBER) RETURN NUMBER;
END CustomerManagement;
/
CREATE OR REPLACE PACKAGE BODY CustomerManagement AS

  PROCEDURE AddCustomer(p_id NUMBER, p_name VARCHAR2, p_dob DATE, p_balance NUMBER) IS
  BEGIN
    INSERT INTO Customers(CustomerID, Name, DOB, Balance, LastModified)
    VALUES(p_id, p_name, p_dob, p_balance, SYSDATE);
    DBMS_OUTPUT.PUT_LINE('Customer added: ' || p_name);
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error adding customer: ' || SQLERRM);
  END;

  PROCEDURE UpdateCustomer(p_id NUMBER, p_balance NUMBER) IS
  BEGIN
    UPDATE Customers
    SET Balance = p_balance, LastModified = SYSDATE
    WHERE CustomerID = p_id;
    DBMS_OUTPUT.PUT_LINE('Balance updated for Customer ID: ' || p_id);
  END;

  FUNCTION GetCustomerBalance(p_id NUMBER) RETURN NUMBER IS
    v_balance NUMBER;
  BEGIN
    SELECT Balance INTO v_balance FROM Customers WHERE CustomerID = p_id;
    RETURN v_balance;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
  END;

END CustomerManagement;
/
