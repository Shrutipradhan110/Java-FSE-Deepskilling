BEGIN
  CustomerManagement.AddCustomer(10, 'Ritika Shah', TO_DATE('1993-09-10', 'YYYY-MM-DD'), 9000);
  CustomerManagement.UpdateCustomer(10, 12000);
  DBMS_OUTPUT.PUT_LINE('Current Balance of Customer 10: ' || CustomerManagement.GetCustomerBalance(10));
END;
/
