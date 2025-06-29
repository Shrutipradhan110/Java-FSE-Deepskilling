ALTER TABLE Customers ADD IsVIP VARCHAR2(5) DEFAULT 'FALSE';
BEGIN
  FOR rec IN (SELECT CustomerID, Balance FROM Customers) LOOP
    IF rec.Balance > 10000 THEN
      UPDATE Customers SET IsVIP = 'TRUE' WHERE CustomerID = rec.CustomerID;
    END IF;
  END LOOP;
  COMMIT;
END;
/
