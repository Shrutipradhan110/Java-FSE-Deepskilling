CREATE OR REPLACE TRIGGER LogTransaction
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    INSERT INTO AuditLog (LogID, TransactionID, Action, LogDate)
    VALUES (
        AuditLog_seq.NEXTVAL,
        :NEW.TransactionID,
        'Inserted a ' || :NEW.TransactionType || ' of amount ' || :NEW.Amount,
        SYSDATE
    );
END;
/
