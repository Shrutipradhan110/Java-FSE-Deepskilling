BEGIN
  FOR rec IN (SELECT CustomerID FROM Customers WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, DOB)/12) > 60) LOOP
    UPDATE Loans
    SET InterestRate = InterestRate - 1
    WHERE CustomerID = rec.CustomerID;
  END LOOP;
  COMMIT;
END;
/
select * from Customers;
