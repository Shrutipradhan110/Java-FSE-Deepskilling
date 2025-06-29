DECLARE
  CURSOR loan_cur IS
    SELECT LoanID, InterestRate FROM Loans;

  v_increment NUMBER := 0.5;
BEGIN
  FOR rec IN loan_cur LOOP
    UPDATE Loans
    SET InterestRate = InterestRate + v_increment
    WHERE LoanID = rec.LoanID;

    DBMS_OUTPUT.PUT_LINE('Updated LoanID: ' || rec.LoanID
                         || ', New Interest Rate: ' || TO_CHAR(rec.InterestRate + v_increment));
  END LOOP;
  COMMIT;
END;
/
