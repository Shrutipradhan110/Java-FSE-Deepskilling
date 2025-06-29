CREATE TABLE AuditLog (
    LogID NUMBER PRIMARY KEY,
    TransactionID NUMBER,
    Action VARCHAR2(100),
    LogDate DATE
);
