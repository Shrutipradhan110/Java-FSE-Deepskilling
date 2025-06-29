DECLARE
  CURSOR cur_trans IS
    SELECT c.CustomerID, c.Name, t.TransactionID, t.TransactionDate, t.Amount, t.TransactionType
    FROM Customers c
    JOIN Accounts a ON c.CustomerID = a.CustomerID
    JOIN Transactions t ON a.AccountID = t.AccountID
    WHERE TRUNC(t.TransactionDate, 'MM') = TRUNC(SYSDATE, 'MM')
    ORDER BY c.CustomerID, t.TransactionDate;
  
  v_customer_id NUMBER := NULL;
BEGIN
  FOR rec IN cur_trans LOOP
    IF v_customer_id != rec.CustomerID THEN
      v_customer_id := rec.CustomerID;
      DBMS_OUTPUT.PUT_LINE('Statement for Customer: ' || rec.Name || ' (ID: ' || rec.CustomerID || ')');
    END IF;
    DBMS_OUTPUT.PUT_LINE(' ' || rec.TransactionDate || ' | ' || rec.TransactionType || ' | ' || rec.Amount);
  END LOOP;
END;
/
