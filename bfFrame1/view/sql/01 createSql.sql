USE [lxfdb]
GO

/****** Object: Table [elm].[EAS_HR_PERSONAL]   Script Date: 8/29/2018 9:54:19 PM ******/
GO

IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[elm].[EAS_HR_PERSONAL]') AND type ='U'))
BEGIN
	DROP TABLE [elm].[EAS_HR_PERSONAL]
END

GO

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [elm].[EAS_HR_PERSONAL] (
	[ASSOCIATE_ID] numeric(19, 0) IDENTITY(1, 1),
	[BIRTHDATE] datetime NULL,
	[EMPLOYMENTDATE] datetime NULL,
	[EXTERNAL_ASSOCIATE_ID] numeric(19, 0) NULL,
	[FIRSTNAME] varchar(255) NULL,
	[HOME_CORP] varchar(255) NULL,
	[IS_TEMP_ID] tinyint NULL,
	[LASTNAME] varchar(255) NULL,
	[MARITALSTATUS] tinyint NULL,
	[MIDDLEINITIAL] varchar(255) NULL,
	[MIDDLENAME] varchar(255) NULL,
	[SSN] varchar(255) NULL,
	[UNIVESAL_ASSOCIATE_ID] varchar(20) NULL,
	[LOAD_TIME] varchar(255) NULL,
	[PERSONAL_STATUS] tinyint NULL,
	[BENEFITDATE] datetime NULL,
	[FTDATE] datetime NULL,
	[MODIFIED_DATE] datetime NULL,
	[QUICK_HIRE] tinyint NULL,
	[FT_STATUS] tinyint NULL,
	[EMPL_TYPE] numeric(19, 0) NULL,
	[TERMINATED_DATE] datetime NULL,
	[CLOCK_ADMIN_PIN] varchar(10) NULL,
	[NICKNAME] varchar(255) NULL,
	[STATE_OVERRIDE] numeric(19, 0) NULL,
	[DISPLAY_NAME] varchar(255) NULL,
	[LOA_STATUS] tinyint NULL,
	[EXCLUDE_AUTO_SCH] tinyint NULL,
	[ORIG_EMPLOYMENTDATE] datetime NULL,
	[IS_CLOCK_ADMIN] tinyint NULL,
	[LOAD_SCH_GRP_IGNORE] tinyint NULL
) ON [PRIMARY]
WITH(DATA_COMPRESSION = NONE)
GO



/****** Object: Primary Key [PK__EAS_HR_PERSONAL__778AC167]   Script Date: 8/29/2018 9:54:19 PM ******/
GO

IF (EXISTS(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[elm].[PK__EAS_HR_PERSONAL__778AC167]') AND type IN ('PK', 'UQ')))
BEGIN
	ALTER TABLE [elm].[EAS_HR_PERSONAL]
	DROP CONSTRAINT [PK__EAS_HR_PERSONAL__778AC167]
END

GO

ALTER TABLE [elm].[EAS_HR_PERSONAL]
 ADD CONSTRAINT [PK__EAS_HR_PERSONAL__778AC167] PRIMARY KEY([ASSOCIATE_ID]) WITH (FILLFACTOR=100,
		DATA_COMPRESSION = NONE) ON [PRIMARY]
GO