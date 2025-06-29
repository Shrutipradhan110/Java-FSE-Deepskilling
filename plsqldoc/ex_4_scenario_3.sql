CREATE OR REPLACE FUNCTION HasSufficientBalance(p_acc_id NUMBER, p_amount NUMBER) RETURN BOOLEAN IS
  v_balance NUMBER;
BEGIN
  SELECT Balance INTO v_balance FROM Accounts WHERE AccountID = p_acc_id;
  RETURN (v_balance >= p_amount);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN FALSE;
END HasSufficientBalance;
/
