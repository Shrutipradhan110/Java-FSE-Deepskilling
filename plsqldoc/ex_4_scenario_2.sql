CREATE OR REPLACE FUNCTION CalculateMonthlyInstallment(
  p_loan_amount NUMBER, p_interest_rate NUMBER, p_years NUMBER) RETURN NUMBER IS
  v_rate NUMBER := p_interest_rate / (12 * 100);
  v_nper NUMBER := p_years * 12;
  v_installment NUMBER;
BEGIN
  v_installment := (p_loan_amount * v_rate) / (1 - POWER(1 + v_rate, -v_nper));
  RETURN ROUND(v_installment, 2);
END CalculateMonthlyInstallment;
/
