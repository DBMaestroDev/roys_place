-- 


PRINT ' Author: NT AUTHORITY\SYSTEM, Create date: 01/18/2017 09:20:16'
PRINT ' Source: Server name: TEAMWORK-PC,  Database name: AdventureWorks2012_DEV_Collector, Label name: DBmaestro Dev - Integration - Build_v15'
PRINT ' Target: Server name: TEAMWORK-PC,  Database name: AdventureWorks2012_Integration, Live'
PRINT ' Baseline: Server name: TEAMWORK-PC,  Database name: AdventureWorks2012_Integration, Label name: 18_Jan_Int'


-- 




-- 


PRINT 'BEGIN TRANSACTION'
BEGIN TRANSACTION
GO


-- dbo.Table_1


IF (@@TRANCOUNT = 0)
    SET NOEXEC ON
GO

IF(  EXISTS( SELECT * FROM sys.objects o WHERE o.name = N'Table_1' AND SCHEMA_NAME( o.schema_id) = N'dbo' ) )
   SET NOEXEC ON
GO

PRINT 'STEP 0 - Table_1 '
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_1](
	[C1] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)  ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

IF (@@ERROR <> 0 AND @@TRANCOUNT <> 0)
    ROLLBACK TRANSACTION
GO

SET NOEXEC OFF 
GO


-- 


IF (@@TRANCOUNT>0) 
BEGIN
    PRINT 'COMMIT TRANSACTION'
    COMMIT TRANSACTION
END
GO



