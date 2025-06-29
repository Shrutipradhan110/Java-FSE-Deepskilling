CREATE OR REPLACE PACKAGE AccountOperations AS
  PROCEDURE OpenAccount(p_id NUMBER, p_cust_id NUMBER, p_type VARCHAR2, p_balance NUMBER);
  PROCEDURE CloseAccount(p_id NUMBER);
  FUNCTION GetTotalBalance(p_cust_id NUMBER) RETURN NUMBER;
END AccountOperations;
/
CREATE OR REPLACE PACKAGE BODY AccountOperations AS

  PROCEDURE OpenAccount(p_id NUMBER, p_cust_id NUMBER, p_type VARCHAR2, p_balance NUMBER) IS
  BEGIN
    INSERT INTO Accounts(AccountID, CustomerID, AccountType, Balance, LastModified)
    VALUES(p_id, p_cust_id, p_type, p_balance, SYSDATE);
    DBMS_OUTPUT.PUT_LINE('Account opened for Customer ID: ' || p_cust_id);
  END;

  PROCEDURE CloseAccount(p_id NUMBER) IS
  BEGIN
    DELETE FROM Accounts WHERE AccountID = p_id;
    DBMS_OUTPUT.PUT_LINE('Account ID ' || p_id || ' closed.');
  END;

  FUNCTION GetTotalBalance(p_cust_id NUMBER) RETURN NUMBER IS
    v_total NUMBER := 0;
  BEGIN
    SELECT SUM(Balance) INTO v_total FROM Accounts WHERE CustomerID = p_cust_id;
    RETURN v_total;
  END;

END AccountOperations;
/
BEGIN
  AccountOperations.OpenAccount(5, 2, 'Checking', 4500);
  DBMS_OUTPUT.PUT_LINE('Total Balance for Customer 2: ' || AccountOperations.GetTotalBalance(2));
  AccountOperations.CloseAccount(5);
END;
/
