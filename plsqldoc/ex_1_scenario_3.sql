BEGIN
  FOR rec IN (SELECT c.Name, l.EndDate FROM Loans l JOIN Customers c ON l.CustomerID = c.CustomerID
              WHERE l.EndDate BETWEEN SYSDATE AND SYSDATE + 30) LOOP
    DBMS_OUTPUT.PUT_LINE('Reminder: Loan for ' || rec.Name || ' is due on ' || TO_CHAR(rec.EndDate, 'DD-MON-YYYY'));
  END LOOP;
END;
/
select * from Customers;
