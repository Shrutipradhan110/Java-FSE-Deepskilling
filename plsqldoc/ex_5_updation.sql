UPDATE Customers SET Name = 'Updated John' WHERE CustomerID = 1;

INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES (3, 1, SYSDATE, 400, 'Withdrawal'); -- Test logic
