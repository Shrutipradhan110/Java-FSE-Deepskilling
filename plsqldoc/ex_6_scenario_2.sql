DECLARE
  CURSOR acc_cur IS
    SELECT AccountID, Balance FROM Accounts;

  v_annual_fee NUMBER := 100;
BEGIN
  FOR rec IN acc_cur LOOP
    UPDATE Accounts
    SET Balance = Balance - v_annual_fee,
        LastModified = SYSDATE
    WHERE AccountID = rec.AccountID;
    
    DBMS_OUTPUT.PUT_LINE('Applied annual fee to AccountID: ' || rec.AccountID
                         || ', New Balance: ' || TO_CHAR(rec.Balance - v_annual_fee));
  END LOOP;
  COMMIT;
END;
/
