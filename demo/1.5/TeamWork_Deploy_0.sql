-- 


PRINT ' Author: NT AUTHORITY\SYSTEM, Create date: 01/18/2017 01:56:10'
PRINT ' Source: Server name: TEAMWORK-PC,  Database name: AdventureWorks2012_DEV_Collector, Label name: DBmaestro Dev - Integration - Build_v7'
PRINT ' Target: Server name: TEAMWORK-PC,  Database name: AdventureWorks2012_Integration, Live'
PRINT ' Baseline: Server name: TEAMWORK-PC,  Database name: AdventureWorks2012_Integration, Label name: 18_Jan_Int'


-- 

USE [AdventureWorks2012_Integration]


-- 


PRINT 'BEGIN TRANSACTION'
BEGIN TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 0 - Employee  , DF_Employee_VacationHours'
GO

IF EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_VacationHours' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_VacationHours]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 1 - Employee  , DF_Employee_SickLeaveHours'
GO

IF EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_SickLeaveHours' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SickLeaveHours]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 2 - Employee  , DF_Employee_SalariedFlag'
GO

IF EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_SalariedFlag' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_SalariedFlag]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 3 - Employee  , DF_Employee_rowguid'
GO

IF EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_rowguid' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_rowguid]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 4 - Employee  , DF_Employee_ModifiedDate'
GO

IF EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_ModifiedDate' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_ModifiedDate]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 5 - Employee  , DF_Employee_CurrentFlag'
GO

IF EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_CurrentFlag' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] DROP CONSTRAINT [DF_Employee_CurrentFlag]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 6 - Employee  , PK_Employee_BusinessEntityID'
GO

IF( EXISTS(SELECT * FROM sys.columns  WHERE name IN(N'Roy') AND object_ID = OBJECT_ID(N'HumanResources.Employee')) )
BEGIN
   ALTER TABLE [HumanResources].[Employee] DROP COLUMN [Roy]
   
END
GO

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 7 - Employee  , CK_Employee_BirthDate'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'CK_Employee_BirthDate' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_BirthDate] CHECK ([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate()))

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 8 - Employee  , CK_Employee_Gender'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'CK_Employee_Gender' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_Gender] CHECK (upper([Gender])='F' OR upper([Gender])='M')

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 9 - Employee  , CK_Employee_HireDate'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'CK_Employee_HireDate' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_HireDate] CHECK ([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate()))

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 10 - Employee  , CK_Employee_MaritalStatus'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'CK_Employee_MaritalStatus' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK (upper([MaritalStatus])='S' OR upper([MaritalStatus])='M')

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 11 - Employee  , CK_Employee_SickLeaveHours'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'CK_Employee_SickLeaveHours' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK ([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120))

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 12 - Employee  , CK_Employee_VacationHours'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'CK_Employee_VacationHours' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_VacationHours] CHECK ([VacationHours]>=(-40) AND [VacationHours]<=(240))

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 13 - Employee  , DF_Employee_ModifiedDate'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_ModifiedDate' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [DF_Employee_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 14 - Employee  , DF_Employee_rowguid'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_rowguid' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [DF_Employee_rowguid] DEFAULT (newid()) FOR [rowguid]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 15 - Employee  , DF_Employee_SalariedFlag'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_SalariedFlag' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [DF_Employee_SalariedFlag] DEFAULT ((1)) FOR [SalariedFlag]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 16 - Employee  , DF_Employee_SickLeaveHours'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_SickLeaveHours' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [DF_Employee_SickLeaveHours] DEFAULT ((0)) FOR [SickLeaveHours]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 17 - Employee  , DF_Employee_VacationHours'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_VacationHours' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [DF_Employee_VacationHours] DEFAULT ((0)) FOR [VacationHours]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 18 - Employee  , DF_Employee_CurrentFlag'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'DF_Employee_CurrentFlag' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [DF_Employee_CurrentFlag] DEFAULT ((1)) FOR [CurrentFlag]

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

IF(  EXISTS( SELECT * FROM sys.objects o WHERE o.name = N'dEmployee' AND SCHEMA_NAME( o.schema_id) = N'HumanResources' ) )
   SET NOEXEC ON
GO

PRINT 'STEP 19 - Employee  , dEmployee'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [HumanResources].[dEmployee] ON [HumanResources].[Employee] 
INSTEAD OF DELETE NOT FOR REPLICATION AS 
BEGIN
    DECLARE @Count int;

    SET @Count = @@ROWCOUNT;
    IF @Count = 0 
        RETURN;

    SET NOCOUNT ON;

    BEGIN
        RAISERROR
            (N'Employees cannot be deleted. They can only be marked as not current.', -- Message
            10, -- Severity.
            1); -- State.

        -- Rollback any active or uncommittable transactions
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END
    END;
END;
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO

SET NOEXEC OFF 
GO


-- HumanResources.Employee


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

PRINT 'STEP 20 - Employee  , FK_Employee_Person_BusinessEntityID'
GO

IF NOT EXISTS( SELECT 1 FROM sys.objects 
                 WHERE  name = N'FK_Employee_Person_BusinessEntityID' AND OBJECT_NAME(parent_object_id) = N'Employee' AND SCHEMA_NAME(schema_id) = N'HumanResources')
   ALTER TABLE [HumanResources].[Employee]
ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID] FOREIGN KEY (
BusinessEntityID) REFERENCES [Person].[Person] (BusinessEntityID) 

GO

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO


-- 


IF (@@TRANCOUNT>0) 
BEGIN
    PRINT 'COMMIT TRANSACTION'
    COMMIT TRANSACTION
END
GO



