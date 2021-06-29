IF NOT EXISTS (
    select * from sysobjects where name='practice' and xtype='U'
) CREATE TABLE practice (
    [users_userId] INT,
    [users_firstName] NVARCHAR(6),
    [users_lastName] NVARCHAR(6),
    [users_phoneNumber] INT,
    [users_emailAddress] NVARCHAR(34)
);
INSERT INTO practice VALUES
    (1,N'Krish',N'Lee',123456,N'krish.lee@learningcontainer.com'),
    (2,N'racks',N'jacson',123456,N'racks.jacson@learningcontainer.com'),
    (3,N'denial',N'roast',33333333,N'denial.roast@learningcontainer.com'),
    (4,N'devid',N'neo',222222222,N'devid.neo@learningcontainer.com'),
    (5,N'jone',N'mac',111111111,N'jone.mac@learningcontainer.com');
