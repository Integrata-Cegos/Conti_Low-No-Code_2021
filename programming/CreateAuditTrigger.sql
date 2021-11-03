--use publishing;
--DROP TRIGGER sawitzki_audit_trigger
-- Every Publisher insertion writes an audir message
CREATE TRIGGER sawitzki_audit_trigger on PUBLISHING_PUBLISHERS FOR INSERT, DELETE AS
BEGIN
    DECLARE @message varchar(256)
    DECLARE @publisherName varchar(20)
    select @publisherName = publisherName from INSERTED
    set @message = 'Sawitzki: Inserted Publisher'
    set @message = @message + @publisherName
    INSERT INTO AUDIT_MESSAGES VALUES (@message)


END
