CREATE OR REPLACE PROCEDURE SafeTransferFunds(p_from_acc NUMBER, p_to_acc NUMBER, p_amount NUMBER) IS
  v_balance NUMBER;
BEGIN
  SELECT Balance INTO v_balance FROM Accounts WHERE AccountID = p_from_acc;
  IF v_balance < p_amount THEN
    RAISE_APPLICATION_ERROR(-20001, 'Insufficient funds');
  END IF;
  
  UPDATE Accounts SET Balance = Balance - p_amount WHERE AccountID = p_from_acc;
  UPDATE Accounts SET Balance = Balance + p_amount WHERE AccountID = p_to_acc;
  
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Error during fund transfer: ' || SQLERRM);
END SafeTransferFunds;
/
select * from Customers;
