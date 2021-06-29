SELECT * 
FROM OPENROWSET (BULK 'C:\rohit\practice.JSON', SINGLE_CLOB) as import
Declare @JSON varchar(max)
SELECT @JSON=BulkColumn
FROM OPENROWSET (BULK 'C:\rohit\practice.JSON', SINGLE_CLOB) import
If (ISJSON(@JSON)=1)
Print 'It is a valid JSON'
ELSE
Print 'Error in JSON format'
Declare @JSON varchar(max)
SELECT @JSON=BulkColumn
FROM OPENROWSET (BULK 'C:\sqlshack\Results.JSON', SINGLE_CLOB) import
SELECT *
FROM OPENJSON (@JSON)
WITH 
(
    [FirstName] varchar(20), 
    [MiddleName] varchar(20), 
    [LastName] varchar(20), 
    [JobTitle] varchar(20), 
    [PhoneNumber] nvarchar(20), 
    [PhoneNumberType] varchar(10), 
    [EmailAddress] nvarchar(100), 
    [EmailPromotion] bit
 
)
