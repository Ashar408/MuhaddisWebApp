USE [master]
GO
/****** Object:  Database [Mohaddis]    Script Date: 4/5/2024 11:35:29 PM ******/
CREATE DATABASE [Mohaddis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MohaddisHadithDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Mohaddis.mdf' , SIZE = 2626752KB , MAXSIZE = 10485760KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MohaddisHadithDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Mohaddis_log.ldf' , SIZE = 2876352KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Mohaddis] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mohaddis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mohaddis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mohaddis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mohaddis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mohaddis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mohaddis] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mohaddis] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mohaddis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mohaddis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mohaddis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mohaddis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mohaddis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mohaddis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mohaddis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mohaddis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mohaddis] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mohaddis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mohaddis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mohaddis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mohaddis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mohaddis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mohaddis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mohaddis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mohaddis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mohaddis] SET  MULTI_USER 
GO
ALTER DATABASE [Mohaddis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mohaddis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mohaddis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mohaddis] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Mohaddis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mohaddis] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mohaddis', N'ON'
GO
ALTER DATABASE [Mohaddis] SET QUERY_STORE = OFF
GO
USE [Mohaddis]
GO
/****** Object:  User [mohaddisNdbusr4]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [mohaddisNdbusr4] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mohaddisdbuser]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [mohaddisdbuser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[mohaddisdbuser]
GO
/****** Object:  User [aqurani1_TDS]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [aqurani1_TDS] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[aqurani1_TDS]
GO
/****** Object:  User [aqurani1_mohaddisv2user]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [aqurani1_mohaddisv2user] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[aqurani1_mohaddisv2user]
GO
/****** Object:  User [aqurani1_mab]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [aqurani1_mab] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[aqurani1_mab]
GO
/****** Object:  User [ahsanhayat]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [ahsanhayat] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE USER [admin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mohaddisNdbusr4]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [mohaddisdbuser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [mohaddisdbuser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mohaddisdbuser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mohaddisdbuser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [aqurani1_TDS]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [aqurani1_TDS]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aqurani1_TDS]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [aqurani1_TDS]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [aqurani1_mohaddisv2user]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [aqurani1_mohaddisv2user]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aqurani1_mohaddisv2user]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [aqurani1_mohaddisv2user]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [aqurani1_mab]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [aqurani1_mab]
GO
ALTER ROLE [db_datareader] ADD MEMBER [aqurani1_mab]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [aqurani1_mab]
GO
ALTER ROLE [db_owner] ADD MEMBER [ahsanhayat]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [admin]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
/****** Object:  Schema [aqurani1_mab]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE SCHEMA [aqurani1_mab]
GO
/****** Object:  Schema [aqurani1_mohaddisv2user]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE SCHEMA [aqurani1_mohaddisv2user]
GO
/****** Object:  Schema [aqurani1_TDS]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE SCHEMA [aqurani1_TDS]
GO
/****** Object:  Schema [mohaddisdbuser]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE SCHEMA [mohaddisdbuser]
GO
/****** Object:  FullTextCatalog [searchCatalog]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE FULLTEXT CATALOG [searchCatalog] 
GO
/****** Object:  PartitionFunction [ifts_comp_fragment_partition_function_2C47A119]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE PARTITION FUNCTION [ifts_comp_fragment_partition_function_2C47A119](varbinary(128)) AS RANGE LEFT FOR VALUES (0x063106CC06480691064806BA00000802080208)
GO
/****** Object:  PartitionScheme [ifts_comp_fragment_data_space_2C47A119]    Script Date: 4/5/2024 11:35:30 PM ******/
CREATE PARTITION SCHEME [ifts_comp_fragment_data_space_2C47A119] AS PARTITION [ifts_comp_fragment_partition_function_2C47A119] TO ([PRIMARY], [PRIMARY])
GO
/****** Object:  UserDefinedFunction [dbo].[GetLastWeeks]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetLastWeeks]
(   
    @Weeks int,
	@Date datetime
)
RETURNS @tempTable TABLE(LastWeeks int, YYYY int, WW int)
AS
BEGIN
    DECLARE @Count INT = 0 
    WHILE(@Count>-@Weeks)
	BEGIN
		insert INTO @tempTable 
		VALUES(CONVERT(int, CONVERT(VARCHAR, DATEPART(YEAR, @Date)) + CASE WHEN DATEPART(ww, @Date) < 10 THEN '0' ELSE '' END + CONVERT(VARCHAR, DATEPART(ww, @Date))), DATEPART(YEAR, @Date), DATEPART(WW, @Date))
		SET @Date=@Date-7
		SET @Count = @Count - 1
	END
    RETURN 
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetMyTopicsInCSV]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE FUNCTION [dbo].[GetMyTopicsInCSV] 
(
	-- Add the parameters for the function here
	@MouzuId int,
	@HadithNumber int,
	@HadithBookID int,
	@isUrdu bit,
	@isEnglish bit=0
)
RETURNS nvarchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result nvarchar(max)

	-- Add the T-SQL statements to compute the return value here
	--SELECT @Result = @MouzuId

	declare @topicNames nvarchar(max)
	if @isUrdu<>1
	Begin
	 	 SELECT @topicNames=coalesce(@topicNames+' - ','')+ '#'+ CAST([ft].ChildID AS NVARCHAR(500))+'##'+ ht2.TopicArabic +' ' +'(' + HT.TopicArabic+ ')' FROM flatTopics ft
	  INNER JOIN HadithTopicsToAhadith hta ON hta.MozuID=ft.ChildID
		INNER JOIN HadithTopics HT ON HT.IDPK IN (SELECT MozuID FROM flatTopics WHERE ChildID = hta.MozuID) AND HT.ParentID = 1
		INNER JOIN HadithTopics ht2 ON ht2.IDPK=ft.ChildID
	  WHERE ft.MozuID=@MouzuId and hta.HadithNumber=@HadithNumber and hta.HadithBookID = @HadithBookID
	  SELECT @Result = @topicNames
	 end
	 
	  else
	 
	  begin
	   select @topicNames=coalesce(@topicNames+' - ','')+ '#'+CAST([ft].ChildID as nvarchar(500))+'##' + CASE WHEN @isEnglish=0 THEN ht2.TopicUrdu ELSE ht2.TopicsEng END +' ' +'(' + CASE WHEN @isEnglish=0 THEN HT.TopicUrdu ELSE HT.TopicsEng END+ ')' FROM flatTopics ft
	 INNER JOIN HadithTopicsToAhadith hta ON hta.MozuID=ft.ChildID
		INNER JOIN HadithTopics HT ON HT.IDPK IN (SELECT MozuID FROM flatTopics WHERE ChildID = hta.MozuID) AND HT.ParentID = 1
		INNER JOIN HadithTopics ht2 ON ht2.IDPK=ft.ChildID
	  WHERE ft.MozuID=@MouzuId and hta.HadithNumber=@HadithNumber and hta.HadithBookID = @HadithBookID
	  SELECT @Result = @topicNames

	  end
	  
	-- Return the result of the function
	RETURN @Result

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetRepeatingNumbers]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetRepeatingNumbers]
(   
    
)
RETURNS @tempTable TABLE(HadeesNumber bigint, NoOfExistance bigint)
AS
BEGIN
	
    INSERT INTO @tempTable
	SELECT
			FLOOR(TarqeemOne),(COUNT(*)-1)
		FROM
			SahiMuslimTaraqeems
		GROUP BY
			FLOOR(TarqeemOne)
		HAVING 
			COUNT(*) > 1
		ORDER BY FLOOR(TarqeemOne)

	
    RETURN 
END
GO
/****** Object:  UserDefinedFunction [dbo].[RemoveASCIICharactersInRange1]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[RemoveASCIICharactersInRange1](@InputString NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    
    SET @InputString = REPLACE(@InputString,NCHAR(1611),'')
	SET @InputString = REPLACE(@InputString,NCHAR(1612),'')
	SET @InputString = REPLACE(@InputString,NCHAR(1613),'')
	SET @InputString = REPLACE(@InputString,NCHAR(1614),'')

	SET @InputString = REPLACE(@InputString,NCHAR(1615),'')
	SET @InputString = REPLACE(@InputString,NCHAR(1616),'')
	SET @InputString = REPLACE(@InputString,NCHAR(1617),'')
	SET @InputString = REPLACE(@InputString,NCHAR(1618),'')

    RETURN(@InputString)
END
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  FUNCTION [dbo].[Split] (
      @pInputString NVARCHAR(max),
      @pDelimiter   VARCHAR(5)
)

RETURNS @Items TABLE (
      Id NVARCHAR(max)
)

AS
BEGIN

	IF (@pInputString IS NULL OR @pInputString = '')
		RETURN;

      IF (@pDelimiter IS NULL OR @pDelimiter = '')
            SET @pDelimiter = ','

--INSERT INTO @Items VALUES (@Delimiter) -- Diagnostic
--INSERT INTO @Items VALUES (@InputString) -- Diagnostic

      DECLARE @Item           NVARCHAR(max)
      DECLARE @ItemList       NVARCHAR(max)
      DECLARE @DelimIndex     INT

      SET @ItemList = @pInputString
      SET @DelimIndex = CHARINDEX(@pDelimiter, @ItemList, 0)
      WHILE (@DelimIndex != 0)
      BEGIN
            SET @Item = SUBSTRING(@ItemList, 0, @DelimIndex)
            INSERT INTO @Items VALUES (@Item)

            -- Set @ItemList = @ItemList minus one less item
            SET @ItemList = SUBSTRING(@ItemList, @DelimIndex+1, LEN(@ItemList)-@DelimIndex)
            SET @DelimIndex = CHARINDEX(@pDelimiter, @ItemList, 0)
      END -- End WHILE

      IF @Item IS NOT NULL -- At least one delimiter was encountered in @InputString
      BEGIN
            SET @Item = @ItemList
            INSERT INTO @Items VALUES (@Item)
      END

      -- No delimiters were encountered in @InputString, so just return @InputString
      ELSE INSERT INTO @Items VALUES (@pInputString)

      RETURN

END -- End Function


GO
/****** Object:  UserDefinedFunction [dbo].[String_To_Table]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[String_To_Table]
                    (@string      VARCHAR(4000),
                     @delimiter CHAR(1) = ';')
         RETURNS @tbl TABLE (ord INT IDENTITY(1, 1) NOT NULL,
                             token     VARCHAR(500)) AS

   BEGIN
      DECLARE @pos      int,
              @textpos  int,
              @chunklen smallint,
              @tmpstr   varchar(4000),
              @leftover varchar(4000),
              @tmpval   varchar(4000)

      SET @textpos = 1
      SET @leftover = ''
      WHILE @textpos <= datalength(@string)
      BEGIN
         SET @chunklen = 4000 - datalength(@leftover)
         SET @tmpstr = @leftover + substring(@string, @textpos, @chunklen)
         SET @textpos = @textpos + @chunklen

         SET @pos = charindex(@delimiter, @tmpstr)

         WHILE @pos > 0
         BEGIN
            SET @tmpval = ltrim(rtrim(left(@tmpstr, @pos - 1)))
            INSERT @tbl (token) VALUES(@tmpval)
            SET @tmpstr = substring(@tmpstr, @pos + 1, len(@tmpstr))
            SET @pos = charindex(@delimiter, @tmpstr)
         END

         SET @leftover = @tmpstr
      END

    IF ltrim(rtrim(@leftover)) <> ''
        INSERT @tbl(token) VALUES (ltrim(rtrim(@leftover)))


 RETURN
   END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_RepalceSpeicialHtmlTags]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[udf_RepalceSpeicialHtmlTags] (@HTMLText NVARCHAR(MAX))
RETURNS NVARCHAR(MAX) AS
BEGIN
   
	SET @HTMLText=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@HTMLText, '&rsquo;', N'’'), '&lsquo;', N'‘'), '&laquo;', N'«'), '&laquo;', N'»'), '&ldquo;', N'“'), '&rdquo;', N'”'), '&nbsp;', N' ')
    RETURN LTRIM(RTRIM(@HTMLText))

END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_StripHTML]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[udf_StripHTML] (@HTMLText NVARCHAR(MAX))
RETURNS NVARCHAR(MAX) AS
BEGIN
    DECLARE @Start INT
    DECLARE @End INT
    DECLARE @Length INT
    SET @Start = CHARINDEX('<',@HTMLText)
    SET @End = CHARINDEX('>',@HTMLText,CHARINDEX('<',@HTMLText))
    SET @Length = (@End - @Start) + 1
    WHILE @Start > 0 AND @End > 0 AND @Length > 0
    BEGIN
        SET @HTMLText = STUFF(@HTMLText,@Start,@Length,'')
        SET @Start = CHARINDEX('<',@HTMLText)
        SET @End = CHARINDEX('>',@HTMLText,CHARINDEX('<',@HTMLText))
        SET @Length = (@End - @Start) + 1
    END

    RETURN LTRIM(RTRIM(@HTMLText))

	--
END

GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abwaab]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abwaab](
	[ID] [int] NULL,
	[HiddenID] [float] NULL,
	[IDPK] [int] IDENTITY(1,1) NOT NULL,
	[KitaabID] [int] NULL,
	[BaabNameArabic] [nvarchar](max) NULL,
	[BaabNameUrdu] [nvarchar](max) NULL,
	[TarjumatulBaabArabic] [ntext] NULL,
	[TarjumatulBaabUrdu] [ntext] NULL,
	[AbwaabTamheedArabic] [nvarchar](max) NULL,
	[AbwaabTamheedUrdu] [nvarchar](max) NULL,
	[TarjumatulBaabUrduOne] [ntext] NULL,
	[TarjumatulBaabUrduTwo] [ntext] NULL,
	[TarjumatulBaabUrduThree] [ntext] NULL,
	[TarjumatulBaabUrduFour] [ntext] NULL,
	[TarjumatulBaabUrduFive] [ntext] NULL,
	[TarjumatulBaabUrduSix] [ntext] NULL,
	[TarjumatulBaabUrduSeven] [ntext] NULL,
	[TarjumatulBaabUrduEight] [ntext] NULL,
	[TarjumatulBaabUrduNine] [ntext] NULL,
	[TarjumatulBaabUrduTen] [ntext] NULL,
	[BaabNameEng] [nvarchar](max) NULL,
 CONSTRAINT [aaaaaAbwaab_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertisements]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisements](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Advertisements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ahadith]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ahadith](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HadeesNumber] [smallint] NULL,
	[BaabID] [int] NULL,
	[HadithArabicText] [ntext] NULL,
	[HadithUrduText] [ntext] NULL,
	[HadithHashiaText] [ntext] NULL,
	[HadithTypeAtraaf] [nvarchar](255) NULL,
	[HadithTypeRawaat] [nvarchar](255) NULL,
	[HadithTypeQFT] [nvarchar](255) NULL,
	[HadithHukamAjmali] [ntext] NULL,
	[HadithHukamTafseeli] [ntext] NULL,
	[HadithMouzuhArabic] [ntext] NULL,
	[HadithMouzuhUrdu] [ntext] NULL,
	[HadithHukamTafseeliArabic] [ntext] NULL,
	[TakhreejUrls] [ntext] NULL,
	[HadeesNumberTOne] [float] NULL,
	[HadeesNumberTTwo] [float] NULL,
	[HadeesNumberTThree] [float] NULL,
	[HadeesNumberTFour] [float] NULL,
	[HadeesNumberTFive] [float] NULL,
	[HadeesNumberTSix] [float] NULL,
	[HadeesNumberTSeven] [float] NULL,
	[HadeesNumberTEight] [float] NULL,
	[HadeesNumberTNine] [float] NULL,
	[HadeesNumberTTen] [float] NULL,
	[HadithUrduTextOne] [ntext] NULL,
	[HadithUrduTextTwo] [ntext] NULL,
	[HadithUrduTextThree] [ntext] NULL,
	[HadithUrduTextFour] [ntext] NULL,
	[HadithUrduTextFive] [ntext] NULL,
	[HadithUrduTextSix] [ntext] NULL,
	[HadithUrduTextSeven] [ntext] NULL,
	[HadithUrduTextEight] [ntext] NULL,
	[HadithUrduTextNine] [ntext] NULL,
	[HadithUrduTextTen] [ntext] NULL,
	[HadithHukamAjmaliOne] [ntext] NULL,
	[HadithHukamAjmaliTwo] [ntext] NULL,
	[HadithHukamAjmaliThree] [ntext] NULL,
	[HadithHukamAjmaliFour] [ntext] NULL,
	[HadithHukamAjmaliFive] [ntext] NULL,
	[HadithHukamAjmaliSix] [ntext] NULL,
	[HadithHukamAjmaliSeven] [ntext] NULL,
	[HadithHukamAjmaliEight] [ntext] NULL,
	[HadithHukamAjmaliNine] [ntext] NULL,
	[HadithHukamAjmaliTen] [ntext] NULL,
	[HadithHashiaTextOne] [ntext] NULL,
	[HadithHashiaTextTwo] [ntext] NULL,
	[HadithHashiaTextThree] [ntext] NULL,
	[HadithHashiaTextFour] [ntext] NULL,
	[HadithHashiaTextFive] [ntext] NULL,
	[HadithHashiaTextSix] [ntext] NULL,
	[HadithHashiaTextSeven] [ntext] NULL,
	[HadithHashiaTextEight] [ntext] NULL,
	[HadithHashiaTextNine] [ntext] NULL,
	[HadithHashiaTextTen] [ntext] NULL,
	[OldBaabID] [int] NULL,
	[OldHadeesNumber] [int] NULL,
 CONSTRAINT [aaaaaAhadith_Test_PK] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Analytics]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Analytics](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TodayVisitors] [bigint] NOT NULL,
	[TodayDate] [date] NOT NULL,
	[ThisWeekVisitors] [bigint] NOT NULL,
	[WeekStartDate] [date] NOT NULL,
	[ThisMonthVisitors] [bigint] NOT NULL,
	[MonthStartDate] [date] NOT NULL,
	[TotalVisitors] [bigint] NOT NULL,
 CONSTRAINT [PK_Analytics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationPushNotificationSettings]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationPushNotificationSettings](
	[ApplicationName] [nvarchar](128) NOT NULL,
	[PushNotificationSettingsJson] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationPushNotificationSettings] PRIMARY KEY CLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompareAbwab]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompareAbwab](
	[rowID] [int] IDENTITY(1,1) NOT NULL,
	[OldBaabID] [int] NULL,
	[NewBaabID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefaultHadith]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultHadith](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[HadithNo] [float] NULL,
	[ToDate] [date] NOT NULL,
	[FromDate] [date] NULL,
 CONSTRAINT [PK_DefaultHadith] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefaultTarqeemAndTarjumah]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultTarqeemAndTarjumah](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookId] [bigint] NOT NULL,
	[DefaultTarqeem] [nvarchar](256) NULL,
	[DefaultTarjumah] [nvarchar](256) NULL,
 CONSTRAINT [PK_DefaultTarqeemAndTarjumah] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSubscriptions]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSubscriptions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_EmailSubscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlatData]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HadithBookID] [smallint] NULL,
	[HadithBookName] [nvarchar](20) NULL,
	[HadithBookNameUrdu] [nvarchar](20) NULL,
	[IdKutab] [smallint] NULL,
	[HiddenIdKutab] [float] NULL,
	[IDPKkutab] [int] NULL,
	[BookID] [smallint] NULL,
	[kitaabNameUrdu] [nvarchar](max) NULL,
	[kitaabNameArabic] [nvarchar](max) NULL,
	[IdAbwaab] [int] NULL,
	[HiddenIdAbwaab] [float] NULL,
	[IDPKAbwaab] [int] NULL,
	[KitaabID] [int] NULL,
	[BaabNameArabic] [nvarchar](max) NULL,
	[BaabNameUrdu] [nvarchar](max) NULL,
	[TarjumatulBaabArabic] [ntext] NULL,
	[TarjumatulBaabUrdu] [ntext] NULL,
	[IdAhadith] [int] NULL,
	[HadeesNumber] [smallint] NULL,
	[BaabID] [int] NULL,
	[HadithArabicText] [ntext] NULL,
	[HadithUrduText] [ntext] NULL,
	[HadithHashiaText] [ntext] NULL,
	[HadithTypeAtraaf] [nvarchar](255) NULL,
	[HadithTypeRawaat] [nvarchar](255) NULL,
	[HadithTypeQFT] [nvarchar](255) NULL,
	[HadithHukamAjmali] [ntext] NULL,
	[HadithHukamTafseeli] [ntext] NULL,
	[HadithMouzuhArabic] [ntext] NULL,
	[HadithMouzuhUrdu] [ntext] NULL,
	[HadithHukamTafseeliArabic] [ntext] NULL,
	[TakhreejUrls] [ntext] NULL,
	[HadeesNumberTOne] [float] NULL,
	[HadeesNumberTTwo] [float] NULL,
	[HadeesNumberTThree] [float] NULL,
	[HadeesNumberTFour] [float] NULL,
	[HadeesNumberTFive] [float] NULL,
	[HadeesNumberTSix] [float] NULL,
	[HadeesNumberTSeven] [float] NULL,
	[HadeesNumberTEight] [float] NULL,
	[HadeesNumberTNine] [float] NULL,
	[HadeesNumberTTen] [float] NULL,
	[HadithUrduTextOne] [ntext] NULL,
	[HadithUrduTextTwo] [ntext] NULL,
	[HadithUrduTextThree] [ntext] NULL,
	[HadithUrduTextFour] [ntext] NULL,
	[HadithUrduTextFive] [ntext] NULL,
	[HadithUrduTextSix] [ntext] NULL,
	[HadithUrduTextSeven] [ntext] NULL,
	[HadithUrduTextEight] [ntext] NULL,
	[HadithUrduTextNine] [ntext] NULL,
	[HadithUrduTextTen] [ntext] NULL,
	[HadithHukamAjmaliOne] [ntext] NULL,
	[HadithHukamAjmaliTwo] [ntext] NULL,
	[HadithHukamAjmaliThree] [ntext] NULL,
	[HadithHukamAjmaliFour] [ntext] NULL,
	[HadithHukamAjmaliFive] [ntext] NULL,
	[HadithHukamAjmaliSix] [ntext] NULL,
	[HadithHukamAjmaliSeven] [ntext] NULL,
	[HadithHukamAjmaliEight] [ntext] NULL,
	[HadithHukamAjmaliNine] [ntext] NULL,
	[HadithHukamAjmaliTen] [ntext] NULL,
	[HadithHashiaTextOne] [ntext] NULL,
	[HadithHashiaTextTwo] [ntext] NULL,
	[HadithHashiaTextThree] [ntext] NULL,
	[HadithHashiaTextFour] [ntext] NULL,
	[HadithHashiaTextFive] [ntext] NULL,
	[HadithHashiaTextSix] [ntext] NULL,
	[HadithHashiaTextSeven] [ntext] NULL,
	[HadithHashiaTextEight] [ntext] NULL,
	[HadithHashiaTextNine] [ntext] NULL,
	[HadithHashiaTextTen] [ntext] NULL,
	[KitaabTamheedArabic] [nvarchar](max) NULL,
	[KitaabTamheedUrdu] [nvarchar](max) NULL,
	[AbwaabTamheedArabic] [nvarchar](max) NULL,
	[AbwaabTamheedUrdu] [nvarchar](max) NULL,
	[TarjumatulBaabUrduOne] [ntext] NULL,
	[TarjumatulBaabUrduTwo] [ntext] NULL,
	[TarjumatulBaabUrduThree] [ntext] NULL,
	[TarjumatulBaabUrduFour] [ntext] NULL,
	[TarjumatulBaabUrduFive] [ntext] NULL,
	[TarjumatulBaabUrduSix] [ntext] NULL,
	[TarjumatulBaabUrduSeven] [ntext] NULL,
	[TarjumatulBaabUrduEight] [ntext] NULL,
	[TarjumatulBaabUrduNine] [ntext] NULL,
	[TarjumatulBaabUrduTen] [ntext] NULL,
	[HadithBookNameEng] [nvarchar](256) NULL,
	[KitaabNameEng] [nvarchar](max) NULL,
	[BaabNameEng] [nvarchar](max) NULL,
 CONSTRAINT [PK_FlatData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flatTopics]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flatTopics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MozuID] [int] NULL,
	[ChildID] [int] NULL,
 CONSTRAINT [PK_CostOfTopics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HadithBooksName]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HadithBooksName](
	[HadithBookID] [smallint] NOT NULL,
	[HadithBookName] [nvarchar](20) NULL,
	[HadithBookNameUrdu] [nvarchar](20) NULL,
	[HadithBookNameEng] [nvarchar](256) NULL,
 CONSTRAINT [aaaaaHadithBooksName_PK] PRIMARY KEY NONCLUSTERED 
(
	[HadithBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HadithTopics]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HadithTopics](
	[IDPK] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[SeqID] [real] NULL,
	[TopicUrdu] [nvarchar](max) NULL,
	[TopicArabic] [nvarchar](max) NULL,
	[Level] [int] NULL,
	[TopicsEng] [nvarchar](max) NULL,
 CONSTRAINT [PK_HadithTopics] PRIMARY KEY CLUSTERED 
(
	[IDPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HadithTopicsToAhadith]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HadithTopicsToAhadith](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MozuID] [int] NULL,
	[HadithNumber] [int] NULL,
	[HadithBookID] [smallint] NULL,
	[TestHadeesNumber] [bigint] NULL,
	[OldHadeesNumber] [bigint] NULL,
 CONSTRAINT [PK_HadithTopicsToAhadith] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HukamSettings]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HukamSettings](
	[_Id] [int] NULL,
	[root_Id] [int] NULL,
	[SrNo] [int] NULL,
	[TarNo] [nvarchar](max) NULL,
	[UrduSrNo] [nvarchar](max) NULL,
	[BookName] [nvarchar](max) NULL,
	[BookID] [int] NULL,
	[Value] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[HashiyaValue] [nvarchar](max) NULL,
	[UrduName] [nvarchar](max) NULL,
	[Ikhtisar] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kutab]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kutab](
	[ID] [smallint] NULL,
	[HiddenID] [float] NULL,
	[IDPK] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [smallint] NULL,
	[kitaabNameUrdu] [nvarchar](max) NULL,
	[kitaabNameArabic] [nvarchar](max) NULL,
	[KitaabTamheedArabic] [nvarchar](max) NULL,
	[KitaabTamheedUrdu] [nvarchar](max) NULL,
	[KitaabNameEng] [nvarchar](max) NULL,
 CONSTRAINT [aaaaaKutab_PK] PRIMARY KEY NONCLUSTERED 
(
	[IDPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PushNotificationDestinations]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PushNotificationDestinations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](256) NULL,
	[FromName] [nvarchar](100) NULL,
	[DestinationAddress] [nvarchar](256) NULL,
	[DestinationType] [nvarchar](50) NULL,
	[DestinationSettings] [nvarchar](max) NULL,
	[IsEnabled] [bit] NULL,
	[IsDefault] [bit] NULL,
	[RecCreatedBy] [nvarchar](256) NULL,
	[RecCreatedDt] [datetimeoffset](7) NULL,
	[RecUpdatedBy] [nvarchar](256) NULL,
	[RecUpdatedDt] [datetimeoffset](7) NULL,
	[IsContactNotification] [bit] NULL,
 CONSTRAINT [PK_PushNotificationDestinations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PushNotificationItems]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PushNotificationItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ContentSourceType] [nvarchar](256) NOT NULL,
	[UserId] [nvarchar](256) NOT NULL,
	[DestinationId] [bigint] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NULL,
	[ScheduledSendDate] [datetimeoffset](7) NULL,
	[DeliveryStatus] [int] NOT NULL,
	[RetryCount] [int] NOT NULL,
	[MessageContent] [nvarchar](max) NULL,
	[IsEnabled] [bit] NULL,
	[RecCreatedBy] [nvarchar](256) NULL,
	[RecCreatedDt] [datetimeoffset](7) NULL,
	[RecUpdatedBy] [nvarchar](256) NULL,
	[RecUpdatedDt] [datetimeoffset](7) NULL,
	[BadgeId] [bigint] NULL,
 CONSTRAINT [PK_notifications.PushNotificationItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[root]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[root](
	[_Id] [int] NULL,
	[Parent_Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takhreej]    Script Date: 4/5/2024 11:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takhreej](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HadithIDPresent] [int] NULL,
	[HadithIDTakhreej] [int] NULL,
	[BookNamePresent] [nvarchar](255) NULL,
	[BookNameTakhreej] [nvarchar](255) NULL,
	[availability] [bit] NULL,
	[HadithBookIdPresent] [int] NULL,
	[HadithBookIdTakhreej] [int] NULL,
	[HadithMohaddisIDPresent] [int] NULL,
	[OLDHadithIDPresent] [int] NULL,
 CONSTRAINT [aaaaaTakhreej_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaraqeemSettings]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaraqeemSettings](
	[_Id] [int] NULL,
	[root_Id] [int] NULL,
	[SrNo] [int] NULL,
	[TarNo] [nvarchar](max) NULL,
	[UrduSrNo] [nvarchar](max) NULL,
	[BookName] [nvarchar](max) NULL,
	[BookID] [int] NULL,
	[Value] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[HashiyaValue] [nvarchar](max) NULL,
	[UrduName] [nvarchar](max) NULL,
	[Ikhtisar] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TazkirahToDayData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TazkirahToDayData](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[ToDate] [date] NOT NULL,
	[FromDate] [date] NOT NULL,
 CONSTRAINT [PK_TazkirahToDayData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBooksConfig]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooksConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](256) NULL,
	[SrNo] [bigint] NULL,
	[TarNo] [nvarchar](256) NULL,
	[UrduSrNo] [nvarchar](256) NULL,
	[BookName] [nvarchar](256) NULL,
	[BookID] [bigint] NULL,
	[Value] [nvarchar](256) NULL,
	[Name] [nvarchar](256) NULL,
	[HashiyaValue] [nvarchar](256) NULL,
	[UrduName] [nvarchar](256) NULL,
	[Ikhtisar] [nvarchar](256) NULL,
 CONSTRAINT [PK_tblBooksConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCharctersToReplace]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCharctersToReplace](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ToSearch] [nvarchar](50) NOT NULL,
	[ToReplace] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblCharctersToReplace] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TranslationSettings]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranslationSettings](
	[_Id] [int] NULL,
	[root_Id] [int] NULL,
	[SrNo] [int] NULL,
	[TarNo] [nvarchar](max) NULL,
	[UrduSrNo] [nvarchar](max) NULL,
	[BookName] [nvarchar](max) NULL,
	[BookID] [int] NULL,
	[Value] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[HashiyaValue] [nvarchar](max) NULL,
	[UrduName] [nvarchar](max) NULL,
	[Ikhtisar] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Updates]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Updates](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Updates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [tblCharctersToReplaceIndex]    Script Date: 4/5/2024 11:35:31 PM ******/
CREATE NONCLUSTERED INDEX [tblCharctersToReplaceIndex] ON [dbo].[tblCharctersToReplace]
(
	[Id] ASC
)
INCLUDE([ToSearch],[ToReplace]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Takhreej] ADD  DEFAULT ((0)) FOR [availability]
GO
ALTER TABLE [dbo].[Abwaab]  WITH CHECK ADD  CONSTRAINT [FK_Abwaab_Kutab] FOREIGN KEY([KitaabID])
REFERENCES [dbo].[Kutab] ([IDPK])
GO
ALTER TABLE [dbo].[Abwaab] CHECK CONSTRAINT [FK_Abwaab_Kutab]
GO
ALTER TABLE [dbo].[Ahadith]  WITH CHECK ADD  CONSTRAINT [FK_Ahadith_Test_Abwaab] FOREIGN KEY([BaabID])
REFERENCES [dbo].[Abwaab] ([IDPK])
GO
ALTER TABLE [dbo].[Ahadith] CHECK CONSTRAINT [FK_Ahadith_Test_Abwaab]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[HadithTopicsToAhadith]  WITH CHECK ADD  CONSTRAINT [FK_HadithTopicsToAhadith_HadithTopics] FOREIGN KEY([MozuID])
REFERENCES [dbo].[HadithTopics] ([IDPK])
GO
ALTER TABLE [dbo].[HadithTopicsToAhadith] CHECK CONSTRAINT [FK_HadithTopicsToAhadith_HadithTopics]
GO
ALTER TABLE [dbo].[Kutab]  WITH CHECK ADD  CONSTRAINT [FK_Kutab_HadithBooksName] FOREIGN KEY([BookID])
REFERENCES [dbo].[HadithBooksName] ([HadithBookID])
GO
ALTER TABLE [dbo].[Kutab] CHECK CONSTRAINT [FK_Kutab_HadithBooksName]
GO
ALTER TABLE [dbo].[PushNotificationItems]  WITH CHECK ADD  CONSTRAINT [FK_PushNotificationItems_PushNotificationDestinations_DestinationId_Id] FOREIGN KEY([DestinationId])
REFERENCES [dbo].[PushNotificationDestinations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PushNotificationItems] CHECK CONSTRAINT [FK_PushNotificationItems_PushNotificationDestinations_DestinationId_Id]
GO
/****** Object:  StoredProcedure [dbo].[GetAbwaab]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAbwaab]
@KitaabID int
AS
BEGIN

	SELECT BaabNameArabic, BaabNameUrdu, BaabNameEng, TarjumatulBaabArabic, TarjumatulBaabUrdu, IDPK, KitaabID
		FROM Abwaab
	WHere KitaabID = ISNULL(@KitaabID, KitaabID)
	ORDER BY HiddenID
END

GO
/****** Object:  StoredProcedure [dbo].[GetAhadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAhadith]
@BID int
AS
BEGIN

	SELECT HadeesNumber, HadithArabicText, HadithUrduText, HadithHashiaText, HadithTypeAtraaf, HadithTypeQFT, HadithTypeRawaat,
	HadithHukamAjmali, HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,HadithHukamTafseeliArabic, TakhreejUrls
	FROM Ahadith
	WHere
	BaabID = @BID
	ORDER BY HadeesNumber
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllInfoAginstAhadithNoAndBookNo]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Haq Nawaz
-- Create date: 11-Oct-2013
-- Description:	To load the data aginst Ahadith Number and Book Number
-- =============================================
CREATE PROCEDURE [dbo].[GetAllInfoAginstAhadithNoAndBookNo] 

 @HadithBookID INT,
 @HadeesNumber INT
 
AS
BEGIN


SELECT  HadithBookID, HadithBookName, HadithBookNameUrdu, Kutab.IDPK AS KutabID, Kutab.kitaabNameArabic,Kutab.kitaabNameUrdu, Abwaab.IDPK AS AbwaabID,
Abwaab.BaabNameArabic,Abwaab.BaabNameUrdu, Ahadith.HadeesNumber, HadithArabicText
,HadithUrduText,HadithHashiaText,HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,
HadithHukamTafseeli,HadithMouzuhArabic,HadithMouzuhUrdu,HadithHukamTafseeliArabic, TakhreejUrls
FROM dbo.HadithBooksName AS Mazdar
INNER JOIN dbo.Kutab AS Kutab
ON Mazdar.HadithBookID = Kutab.BookID
INNER JOIN dbo.Abwaab AS Abwaab
ON Kutab.IDPK = Abwaab.KitaabID
INNER JOIN dbo.Ahadith AS Ahadith
ON Abwaab.IDPK = Ahadith.BaabID

WHERE Mazdar.HadithBookID = @HadithBookID AND Ahadith.HadeesNumber = @HadeesNumber


END

GO
/****** Object:  StoredProcedure [dbo].[GetEntityClass]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetEntityClass]( 
@TableName SYSNAME 
)
AS
BEGIN

    DECLARE @Result VARCHAR(MAX) = 'public class ' + @TableName + '
    {'

    SELECT @Result = @Result + '
	[DataField(Type=DbType.'+ColumnDataType+')] 
        public ' + ColumnType + NullableSign + ' ' + ColumnName + ' { get; set; }
    '
    FROM
    (
        SELECT 
            REPLACE(col.name, ' ', '_') ColumnName,
            column_id ColumnId,

			CASE typ.name 
                WHEN 'bigint' THEN 'Int32'
                WHEN 'binary' THEN 'Byte[]'
                WHEN 'bit' THEN 'Boolean'
                WHEN 'char' THEN 'String'
                WHEN 'date' THEN 'DateTime'
                WHEN 'datetime' THEN 'DateTime'
                WHEN 'datetime2' THEN 'DateTime'
                WHEN 'datetimeoffset' THEN 'DateTimeOffset'
                WHEN 'decimal' THEN 'Decimal'
                WHEN 'float' THEN 'Decimal'
                WHEN 'image' THEN 'Byte[]'
                WHEN 'int' THEN 'Int16'
                WHEN 'money' THEN 'Decimal'
                WHEN 'nchar' THEN 'String'
                WHEN 'ntext' THEN 'String'
                WHEN 'numeric' THEN 'Decimal'
                WHEN 'nvarchar' THEN 'String'
                WHEN 'real' THEN 'Double'
                WHEN 'smalldatetime' THEN 'DateTime'
                WHEN 'smallint' THEN 'Int16'
                WHEN 'smallmoney' THEN 'Decimal'
                WHEN 'text' THEN 'String'
                WHEN 'time' THEN 'TimeSpan'
                WHEN 'timestamp' THEN 'DateTime'
                WHEN 'tinyint' THEN 'Byte'
                WHEN 'uniqueidentifier' THEN 'Guid'
                WHEN 'varbinary' THEN 'Byte[]'
                WHEN 'varchar' THEN 'String'
                ELSE 'UNKNOWN_' + typ.name
            END ColumnDataType,

            CASE typ.name 
                WHEN 'bigint' THEN 'long'
                WHEN 'binary' THEN 'byte[]'
                WHEN 'bit' THEN 'bool'
                WHEN 'char' THEN 'string'
                WHEN 'date' THEN 'DateTime'
                WHEN 'datetime' THEN 'DateTime'
                WHEN 'datetime2' THEN 'DateTime'
                WHEN 'datetimeoffset' THEN 'DateTimeOffset'
                WHEN 'decimal' THEN 'decimal'
                WHEN 'float' THEN 'float'
                WHEN 'image' THEN 'byte[]'
                WHEN 'int' THEN 'int'
                WHEN 'money' THEN 'decimal'
                WHEN 'nchar' THEN 'char'
                WHEN 'ntext' THEN 'string'
                WHEN 'numeric' THEN 'decimal'
                WHEN 'nvarchar' THEN 'string'
                WHEN 'real' THEN 'double'
                WHEN 'smalldatetime' THEN 'DateTime'
                WHEN 'smallint' THEN 'int'
                WHEN 'smallmoney' THEN 'decimal'
                WHEN 'text' THEN 'string'
                WHEN 'time' THEN 'TimeSpan'
                WHEN 'timestamp' THEN 'DateTime'
                WHEN 'tinyint' THEN 'byte'
                WHEN 'uniqueidentifier' THEN 'Guid'
                WHEN 'varbinary' THEN 'byte[]'
                WHEN 'varchar' THEN 'string'
                ELSE 'UNKNOWN_' + typ.name
            END ColumnType,
            CASE 
                WHEN col.is_nullable = 1 and typ.name in ('bigint', 'bit', 'date', 'datetime', 'datetime2', 'datetimeoffset', 'decimal', 'float', 'int', 'money', 'numeric', 'real', 'smalldatetime', 'smallint', 'smallmoney', 'time', 'tinyint', 'uniqueidentifier') 
                THEN '?' 
                ELSE '' 
            END NullableSign
        FROM sys.columns col
            join sys.types typ ON
                col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id
        WHERE OBJECT_ID = OBJECT_ID(@TableName)
    ) t
    ORDER BY ColumnId

    SET @Result = @Result  + '
    }'

PRINT @Result
END
GO
/****** Object:  StoredProcedure [dbo].[GetHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHadith]
@HID int, @BID int
AS
BEGIN

	SELECT HadeesNumber, HadithArabicText, HadithUrduText, HadithHashiaText, HadithTypeAtraaf, HadithTypeQFT, HadithTypeRawaat,
	HadithHukamAjmali, HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,HadithHukamTafseeliArabic, HadithBookName, 
	kitaabNameArabic, BaabNameArabic, kitaabNameUrdu, BaabNameUrdu, TakhreejUrls
	FROM HadithAllData
	WHere
	HadeesNumber = @HID and
	BaabID = @BID
	
	ORDER BY HadeesNumber
END

GO
/****** Object:  StoredProcedure [dbo].[GetHadithByID]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHadithByID]
@HID int, @BOOKID int
AS
BEGIN

	SELECT HadeesNumber, HadithArabicText, HadithUrduText, HadithHashiaText, HadithTypeAtraaf, HadithTypeQFT, HadithTypeRawaat,
	HadithHukamAjmali, HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,HadithHukamTafseeliArabic, HadithBookName, 
	kitaabNameArabic, BaabNameArabic, kitaabNameUrdu, BaabNameUrdu
	FROM HadithAllData
	WHere
	HadeesNumber = @HID and HadithBookID = @BOOKID
	
	ORDER BY HadeesNumber
END


GO
/****** Object:  StoredProcedure [dbo].[GetKutab]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetKutab]
@bid int
AS
BEGIN

	SELECT kitaabNameArabic, kitaabNameUrdu,IDPK 
	FROM Kutab
	WHere
	BookID = @bid
	ORDER BY HiddenID
END


GO
/****** Object:  StoredProcedure [dbo].[HadithAllData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HadithAllData]
@HID int, @BOOKID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON
    -- Insert statements for procedure here
SELECT dbo.Ahadith.HadithArabicText, dbo.Ahadith.HadithUrduText, dbo.Ahadith.HadithHashiaText, dbo.Ahadith.HadeesNumber, dbo.Kutab.kitaabNameArabic, 
               dbo.Kutab.kitaabNameUrdu, dbo.HadithBooksName.HadithBookName, dbo.Abwaab.BaabNameUrdu, dbo.Abwaab.BaabNameArabic
FROM  dbo.HadithBooksName INNER JOIN
               dbo.Kutab ON dbo.HadithBooksName.HadithBookID = dbo.Kutab.BookID INNER JOIN
               dbo.Abwaab ON dbo.Kutab.IDPK = dbo.Abwaab.KitaabID INNER JOIN
               dbo.Ahadith ON dbo.Abwaab.IDPK = dbo.Ahadith.BaabID
               where 
               HadeesNumber = @HID and HadithBookID = @BOOKID
END

GO
/****** Object:  StoredProcedure [dbo].[SearchHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SearchHadith]
@SearchText ntext
AS
BEGIN

	SELECT  HadithBookName, HadithBookNameUrdu, Kutab.IDPK AS KutabID, Abwaab.IDPK AS AbwaabID, Ahadith.HadeesNumber, 
	HadithArabicText
,HadithUrduText,HadithHashiaText
FROM dbo.HadithBooksName AS Mazdar
INNER JOIN dbo.Kutab AS Kutab
ON Mazdar.HadithBookID = Kutab.BookID
INNER JOIN dbo.Abwaab AS Abwaab
ON Kutab.IDPK = Abwaab.KitaabID
INNER JOIN dbo.Ahadith AS Ahadith
ON Abwaab.IDPK = Ahadith.BaabID

	
	WHere
	HadithUrduText like '%@SearchText%' or HadithArabicText like '%@SearchText%' or HadithHashiaText like 
	'%@SearchText%'
END


GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllAbwabByKitabId]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE PROC [dbo].[sp_GetAllAbwabByKitabId]
@kitaabid int,
@pNo int,
@pSize int
AS
BEGIN
  SELECT 	RowNo,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu, BaabNameEng,IDPK FROM
	(
	SELECT  ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu, BaabNameEng,A.IDPK from Abwaab A 
	INNER JOIN kutab k ON k.IDPK=A.KitaabID 
	INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid  
	WHERE kitaabid=@kitaabid
	 )	
	  Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

	SELECT COUNT(*) TotalRecords  FROM Abwaab A 
	INNER JOIN kutab k ON k.IDPK=A.KitaabID 
	INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid  
	WHERE kitaabid=@kitaabid

 END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAnalytics]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetAnalytics] 
	-- Add the parameters for the stored procedure here
	@Id bigint=NULL,
	@Url nvarchar(256)=NULL,
	@SessionId nvarchar(256)=NULL,
	@Command nvarchar(256)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Command='PAGEVIEW'
		BEGIN
			IF NOT EXISTS(SELECT 1 FROM Analytics WHERE MonthStartDate = CONVERT(DATE,DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()),0)))
				BEGIN
					UPDATE Analytics SET TodayVisitors=1, ThisWeekVisitors=ThisWeekVisitors+1, MonthStartDate=CONVERT(DATE,DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()),0)), ThisMonthVisitors=1, TotalVisitors=TotalVisitors+1
				END
			IF NOT EXISTS(SELECT 1 FROM Analytics WHERE WeekStartDate = CONVERT(DATE,DATEADD(dd, -(DATEPART(dw, GETDATE())-1), GETDATE())))
				BEGIN
					UPDATE Analytics SET TodayVisitors=1, WeekStartDate=CONVERT(DATE,DATEADD(dd, -(DATEPART(dw, GETDATE())-1), GETDATE())), ThisWeekVisitors=1, ThisMonthVisitors=ThisMonthVisitors+1, TotalVisitors=TotalVisitors+1
				END
			IF NOT EXISTS(SELECT 1 FROM Analytics WHERE TodayDate = CONVERT(DATE,GETDATE()))
				BEGIN
					UPDATE Analytics SET TodayVisitors=1, TodayDate=CONVERT(DATE,GETDATE()), ThisWeekVisitors=ThisWeekVisitors+1, ThisMonthVisitors=ThisMonthVisitors+1, TotalVisitors=TotalVisitors+1
				END
			ELSE
				BEGIN
					UPDATE Analytics SET TodayVisitors=TodayVisitors+1, ThisWeekVisitors=ThisWeekVisitors+1, ThisMonthVisitors=ThisMonthVisitors+1, TotalVisitors=TotalVisitors+1
				END
				SET @Command='GetCount'
		END
	IF @Command='GetCount'
		BEGIN
			DECLARE @TotalVistors bigint=NULL,
				@TodayVistors bigint=NULL,
				@WeeklyVistors bigint=NULL,
				@MonthlyVistors bigint=NULL
			
			SELECT @TotalVistors=TotalVisitors FROM Analytics
			SELECT @TodayVistors=TodayVisitors FROM Analytics WHERE TodayDate=CONVERT(DATE,GETDATE())

			SELECT @WeeklyVistors=ThisWeekVisitors FROM Analytics WHERE WeekStartDate=CONVERT(DATE,DATEADD(dd, -(DATEPART(dw, GETDATE())-1), GETDATE()))

			SELECT @MonthlyVistors=ThisMonthVisitors FROM Analytics WHERE MonthStartDate=CONVERT(DATE,DATEADD(month, DATEDIFF(month, 0, GETDATE()), 0))

			SELECT @TodayVistors AS TodayVistors, @weeklyVistors AS WeeklyVistors, @MonthlyVistors AS MonthlyVistors, 100000+@TotalVistors AS TotalVistors
		END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetApplicationPushNotificationSettings]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetApplicationPushNotificationSettings]
	@ApplicationName nvarchar(256) = NULL
AS
	BEGIN
		SELECT A.ApplicationName, A.PushNotificationSettingsJson FROM ApplicationPushNotificationSettings A
		WHERE A.ApplicationName = ISNULL(@ApplicationName, A.ApplicationName)
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDefaultSetting]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetDefaultSetting]
AS
BEGIN
    SELECT * FROM HadithBooksName CROSS JOIN TaraqeemSettings Cross Join HukamSettings Cross Join TranslationSettings;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFirstHadithNumber]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetFirstHadithNumber]
    
    @BaabID int,
    @DefaulTarqeem nvarchar(256)=NULL
AS
BEGIN
    select top 1 CONVERT(float, (CASE WHEN (@DefaulTarqeem='HadeesNumber') THEN A.HadeesNumber
    WHEN (@DefaulTarqeem='HadeesNumberTOne') THEN ISNULL(A.HadeesNumberTOne,A.HadeesNumber)
    WHEN (@DefaulTarqeem='HadeesNumberTTwo') THEN ISNULL(A.HadeesNumberTTwo,A.HadeesNumber)
    WHEN (@DefaulTarqeem='HadeesNumberTThree') THEN ISNULL(A.HadeesNumberTThree,A.HadeesNumber)
    WHEN (@DefaulTarqeem='HadeesNumberTFour') THEN ISNULL(A.HadeesNumberTFour,A.HadeesNumber)
    WHEN (@DefaulTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
    WHEN (@DefaulTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
    WHEN (@DefaulTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
    WHEN (@DefaulTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
    WHEN (@DefaulTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
        ELSE HadeesNumberTTen END)) AS HadeesNumber 
	FROM Ahadith A 
	WHERE BaabID = @BaabID
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetHadithByBookorBaabId]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE Proc [dbo].[sp_GetHadithByBookorBaabId]
@isKutab bit,
@isEnglish bit=0,
@idpk int,
@pNo int=1,
@pSize int=10,
@BukhariTarqeem nvarchar(256),
@MuslimTarqeem nvarchar(256),
@DaudTarqeem nvarchar(256),
@TrimziTarqeem nvarchar(256),
@NisaiTarqeem nvarchar(256),
@MajahTarqeem nvarchar(256),
@BukhariTranslation nvarchar(256),
@MuslimTranslation nvarchar(256),
@DaudTranslation nvarchar(256),
@TrimziTranslation nvarchar(256),
@NisaiTranslation nvarchar(256),
@MajahTranslation nvarchar(256)

AS
 BEGIN
  IF @iskutab<>1
 
    BEGIN

	  SELECT RowNo, HadithBookID,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,
	  HadeesNumber,HadithArabicText,Case When DataLength(HadithUrduText) > 570 Then SUBSTRING(HadithUrduText,0,570) + '...' Else HadithUrduText End As HadithUrduText,HadithHashiaText,Id
	  FROM
	 (
	  Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,
		CASE WHEN @isEnglish=0 THEN HadithBookNameUrdu ELSE HadithBookNameEng END AS HadithBookNameUrdu,
		kitaabNameArabic, CASE WHEN @isEnglish=0 THEN kitaabNameUrdu ELSE KitaabNameEng END AS kitaabNameUrdu, Fd.HadithBookID,
	  (CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
			WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
			WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
			WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
			WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

			WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
			WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
			WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
			WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
			WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
			WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

			WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
			WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
			WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
			WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
			WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

			WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
			WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
			WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
			WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
			WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
			WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

			WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
			WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
			WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
			WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
			WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

			WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
			WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
			WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
			WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
			WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
			WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

			WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
			WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
			WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
			WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
			WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

			WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
			WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
			WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
			WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
			WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
			WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

			WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
			WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
			WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
			WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
			WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

			WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
			WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
			WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
			WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
			WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
			WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

			WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
			WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
			WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
			WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
			WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

			WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
			WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
			WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
			WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
			WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
			WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
			END) AS HadeesNumber, IdAhadith AS Id,			
	  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
	  --Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,
	  CASE WHEN @isEnglish=0 THEN BaabNameUrdu ELSE BaabNameEng END AS BaabNameUrdu,
	  Case When DataLength(HadithArabicText) > 630 Then SUBSTRING(HadithArabicText,0,630) + '...' Else HadithArabicText End As HadithArabicText,
      (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
			WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
			WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
			WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
			WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

			WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
			WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
			WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
			WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
			WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
			WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

			WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
			WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
			WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
			WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
			WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

			WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
			WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
			WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
			WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
			WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
			WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

			WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
			WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
			WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
			WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
			WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

			WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
			WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
			WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
			WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
			WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
			WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

			WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
			WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
			WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
			WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
			WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

			WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
			WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
			WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
			WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
			WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
			WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

			WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
			WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
			WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
			WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
			WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

			WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
			WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
			WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
			WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
			WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
			WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

			WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
			WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
			WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
			WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
			WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

			WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
			WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
			WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
			WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
			WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
			WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
			END)AS HadithUrduText,
      Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  	
		FROM flatData Fd WHERE idpkAbwaab=@idpk
	  )
	  Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)


	  SELECT COUNT(*) TotalRecords  FROM flatData
	  WHERE idpkAbwaab=@idpk

	  SELECT BaabNameArabic, BaabNameUrdu, BaabNameEng FROM Abwaab WHERE IDPK=@idpk
    END
 ELSE

 
   BEGIN 
	  SELECT RowNo, HadithBookID,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadithHashiaText,Id,
	  HadeesNumber,HadithArabicText,Case When DataLength(HadithUrduText) > 570 Then SUBSTRING(HadithUrduText,0,570) + '...' Else HadithUrduText End As HadithUrduText
	  FROM
	  (
	  Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,
		CASE WHEN @isEnglish=0 THEN HadithBookNameUrdu ELSE HadithBookNameEng END AS HadithBookNameUrdu,  HadithBookName,
		kitaabNameArabic, CASE WHEN @isEnglish=0 THEN kitaabNameUrdu ELSE KitaabNameEng END AS kitaabNameUrdu, Fd.HadithBookID,
	  (CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
			WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
			WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
			WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
			WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

			WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
			WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
			WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
			WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
			WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
			WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

			WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
			WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
			WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
			WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
			WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

			WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
			WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
			WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
			WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
			WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
			WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

			WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
			WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
			WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
			WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
			WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

			WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
			WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
			WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
			WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
			WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
			WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

			WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
			WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
			WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
			WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
			WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

			WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
			WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
			WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
			WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
			WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
			WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

			WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
			WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
			WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
			WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
			WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

			WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
			WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
			WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
			WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
			WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
			WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

			WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
			WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
			WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
			WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
			WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

			WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
			WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
			WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
			WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
			WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
			WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
			END) AS HadeesNumber, IdAhadith AS Id,			
		 Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
		 --Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,
		 CASE WHEN @isEnglish=0 THEN BaabNameUrdu ELSE BaabNameEng END AS BaabNameUrdu,
		 Case When DataLength(HadithArabicText) > 630 Then SUBSTRING(HadithArabicText,0,630) + '...' Else HadithArabicText End As HadithArabicText,
		 (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
			WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
			WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
			WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
			WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

			WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
			WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
			WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
			WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
			WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
			WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

			WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
			WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
			WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
			WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
			WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

			WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
			WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
			WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
			WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
			WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
			WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

			WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
			WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
			WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
			WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
			WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

			WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
			WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
			WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
			WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
			WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
			WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

			WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
			WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
			WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
			WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
			WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

			WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
			WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
			WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
			WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
			WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
			WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

			WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
			WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
			WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
			WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
			WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

			WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
			WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
			WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
			WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
			WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
			WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

			WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
			WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
			WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
			WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
			WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

			WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
			WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
			WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
			WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
			WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
			WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
			END)AS HadithUrduText,
		 Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  	
	 FROM flatData Fd WHERE IDPKKutab=@idpk
	 )
	 Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)
	
	 SELECT COUNT(*) TotalRecords  FROM flatData
	  WHERE IDPKKutab=@idpk

	  SELECT kitaabNameArabic, kitaabNameUrdu, KitaabNameEng FROM kutab WHERE IDPK=@idpk

   END



 END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetKutabAndBaabByHadithNumber]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetKutabAndBaabByHadithNumber] 
@hadithNumber float,
@bookID int,
@DefaulTarqeem nvarchar(256)
AS
BEGIN

select(CASE WHEN (@DefaulTarqeem='HadeesNumber') THEN A.HadeesNumber
	WHEN (@DefaulTarqeem='HadeesNumberTOne') THEN ISNULL(A.HadeesNumberTOne,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTTwo') THEN ISNULL(A.HadeesNumberTTwo,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTThree') THEN ISNULL(A.HadeesNumberTThree,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTFour') THEN ISNULL(A.HadeesNumberTFour,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
	WHEN (@DefaulTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
	WHEN (@DefaulTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
	WHEN (@DefaulTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
	WHEN (@DefaulTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
		ELSE HadeesNumberTTen END) AS HadeesNumber,
	K.IDPK KutabID,AB.IDPK BaabID,A.Id HadithID from Ahadith A
inner join Abwaab AB on AB.IDPK = A.BaabID
inner join Kutab K on k.IDPK = ab.KitaabID
inner join HadithBooksName H on H.HadithBookID = K.BookID and K.BookID = @bookID
where 
(CASE WHEN (@DefaulTarqeem='HadeesNumber') THEN A.HadeesNumber
	WHEN (@DefaulTarqeem='HadeesNumberTOne') THEN ISNULL(A.HadeesNumberTOne,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTTwo') THEN ISNULL(A.HadeesNumberTTwo,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTThree') THEN ISNULL(A.HadeesNumberTThree,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTFour') THEN ISNULL(A.HadeesNumberTFour,A.HadeesNumber)
	WHEN (@DefaulTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
	WHEN (@DefaulTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
	WHEN (@DefaulTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
	WHEN (@DefaulTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
	WHEN (@DefaulTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
		ELSE HadeesNumberTTen END) = @hadithNumber

END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetNotifications]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetNotifications] 
  	-- Add the parameters for the stored procedure here
  	@ContentSourceType nvarchar(256) = NULL,
  	@ApplicationName nvarchar(128) = 'Mohaddis',
  	@SessionUserId nvarchar(256) = NULL,
  	@MessageContent nvarchar(max) = NULL,
  	@UserId nvarchar(256) = NULL,
  	@ToEmail nvarchar(256) = NULL,
 	@PushNotificationSettingsJson nvarchar(MAX) = NULL,
  	@RecCreatedBy nvarchar(256) = NULL,
	@PerDayLimit bigint=NULL,
	@PerHourLimit bigint=NULL,
	@BadgeLimit bigint=20,
	@BadgeInterval bigint=20,
	@BadgeId bigint=NULL,
	@RemainingEmailLimit bigint=NULL,
	@PerDayRemainingEmailLimit bigint=NULL,
	@PerHourRemainingEmailLimit bigint=NULL,
	@PerBadgeRemainingEmailLimit bigint=NULL,
  	@Command nvarchar(64) = NULL
  AS
  BEGIN
  	-- SET NOCOUNT ON added to prevent extra result sets from
  	-- interfering with SELECT statements.
  	SET NOCOUNT ON;
  	SET @Command = RTRIM(LTRIM(ISNULL(@Command, '')))
  
  	IF @Command = 'ADD'
  		BEGIN
  			DECLARE @DestinationId bigint = NULL
  			SELECT @DestinationId = PD.Id FROM PushNotificationDestinations PD WHERE PD.DestinationAddress = @ToEmail
  			IF ISNULL(@DestinationId, 0) <= 0
  				BEGIN
  					INSERT INTO PushNotificationDestinations (UserId, FromName, DestinationAddress, DestinationType, DestinationSettings, IsEnabled, IsDefault, RecCreatedDt, RecCreatedBy, IsContactNotification)
  						SELECT TOP(1) 'ADMIN', 'ADMIN', @ToEmail, @ContentSourceType, A.PushNotificationSettingsJson,
  								1, 1, SYSDATETIMEOFFSET(), @RecCreatedBy, 0 FROM ApplicationPushNotificationSettings A 
  							LEFT OUTER JOIN PushNotificationDestinations PS ON PS.DestinationAddress = @ToEmail
  						WHERE A.ApplicationName = @ApplicationName
  					SET @DestinationId = SCOPE_IDENTITY();
  				END
  			INSERT INTO PushNotificationItems
  				(
  					ContentSourceType,
  					UserId,
  					DestinationId,
  					CreatedDate,
  					ScheduledSendDate,
  					DeliveryStatus,
  					RetryCount,
  					MessageContent,
  					IsEnabled,
  					RecCreatedBy,
  					RecCreatedDt
  				)
  			VALUES
  				(
  					@ContentSourceType,
  					@UserId,
  					@DestinationId,
  					SYSDATETIMEOFFSET(),
  					SYSDATETIMEOFFSET(),
  					0,
  					0,
  					@MessageContent,
  					1,
  					@RecCreatedBy,
  					SYSDATETIMEOFFSET()
  				)
  		END
  	ELSE
  		BEGIN
			
			IF @PerDayLimit>0
				BEGIN
					SELECT @PerDayRemainingEmailLimit= @PerDayLimit-COUNT(Id) FROM PushNotificationItems WHERE CONVERT(DATE, RecUpdatedDt)=CONVERT(DATE, SYSDATETIMEOFFSET()) AND DeliveryStatus=1 AND RetryCount=1
				END

			IF @PerHourLimit>0
				BEGIN
					SELECT @PerHourRemainingEmailLimit= @PerHourLimit-COUNT(Id)  FROM PushNotificationItems WHERE DATEPART(HOUR,RecUpdatedDt)=DATEPART(HOUR,SYSDATETIMEOFFSET()) AND DeliveryStatus=1 AND RetryCount=1
				END			

			IF @PerDayRemainingEmailLimit IS NOT NULL AND ISNULL(@PerDayRemainingEmailLimit,0)>ISNULL(@PerHourRemainingEmailLimit,0)
				BEGIN
					SET @RemainingEmailLimit=@PerHourRemainingEmailLimit
				END

			IF @PerHourRemainingEmailLimit IS NOT NULL AND @PerHourRemainingEmailLimit>=0 AND @PerDayRemainingEmailLimit IS NULL
				BEGIN
					SET @RemainingEmailLimit=@PerHourRemainingEmailLimit
				END
			
			IF @PerDayRemainingEmailLimit IS NOT NULL AND @PerDayRemainingEmailLimit>0 AND @PerHourRemainingEmailLimit>@PerDayRemainingEmailLimit
				BEGIN
					SET @RemainingEmailLimit=@PerDayRemainingEmailLimit
				END

			IF NOT EXISTS(SELECT TOP(1) Id FROM tblBadges B WHERE (SYSDATETIMEOFFSET() BETWEEN RecCreatedDt AND DATEADD(minute, Interval, RecCreatedDt)) AND @BadgeLimit>0 AND @BadgeInterval>0 ORDER BY RecCreatedDt DESC)
				BEGIN
					INSERT INTO [dbo].[tblBadges] ([Limit] ,[Interval] ,[RecCreatedBy] ,[RecCreatedDt] ,[RecUpdatedBy] ,[RecUpdatedDt])
						VALUES(@BadgeLimit, @BadgeInterval, 'ADMIN', SYSDATETIMEOFFSET(), NULL, NULL)
					SET @BadgeId= SCOPE_IDENTITY()
					SELECT @PerBadgeRemainingEmailLimit=Limit FROM tblBadges WHERE Id=@BadgeId
				END
			ELSE
				BEGIN
					SELECT TOP(1) @BadgeId=Id, @PerBadgeRemainingEmailLimit=Limit FROM tblBadges B WHERE SYSDATETIMEOFFSET() BETWEEN RecCreatedDt AND DATEADD(minute, Interval, RecCreatedDt) ORDER BY RecCreatedDt DESC
				END

			IF @RemainingEmailLimit IS NOT NULL AND @RemainingEmailLimit>@PerBadgeRemainingEmailLimit AND @BadgeLimit>0 AND @BadgeInterval>0
				BEGIN
					SET @RemainingEmailLimit=@PerBadgeRemainingEmailLimit
				END

			IF @PerBadgeRemainingEmailLimit IS NOT NULL AND @PerBadgeRemainingEmailLimit>0 AND @BadgeLimit>0 AND @BadgeInterval>0
				BEGIN
					SET @RemainingEmailLimit=@PerBadgeRemainingEmailLimit
				END
  			-- Insert statements for procedure here
  			
			DECLARE @Notifications TABLE (Id bigint, BID bigint)
			IF NOT EXISTS (SELECT 1 FROM PushNotificationItems WHERE ISNULL(BadgeId,0)=ISNULL(@BadgeId,0))
				BEGIN
  					INSERT INTO @Notifications (Id, BID)
					SELECT PID, BId FROM (
  					SELECT ROW_NUMBER() OVER (ORDER BY P.Id) AS RowIndex, P.Id AS PID, B.Id AS BID, B.BLimit, P.BadgeId FROM PushNotificationItems P
  						LEFT OUTER JOIN PushNotificationDestinations PD ON P.DestinationId = PD.Id
						OUTER APPLY(SELECT TOP(1) Id, Limit AS BLimit FROM tblBadges B WHERE SYSDATETIMEOFFSET() BETWEEN RecCreatedDt AND DATEADD(minute, Interval, RecCreatedDt) ORDER BY RecCreatedDt DESC)B
  					WHERE P.ContentSourceType = 'email'
  						AND (P.DeliveryStatus = 0  OR P.DeliveryStatus = 2 )
  						AND P.RetryCount <= CONVERT(int, dbo.GetJSONValue(PD.DestinationSettings, 'RetryAttempts', default, default))
					) AS SubQsuery
					WHERE RowIndex <= ISNULL(@RemainingEmailLimit, RowIndex)
					ORDER BY PId  ASC
				END
  

  /*
  DECLARE @Notifications TABLE (Id bigint)
  			INSERT INTO @Notifications (Id)
  			SELECT P.Id FROM PushNotificationItems P
  				LEFT OUTER JOIN PushNotificationDestinations PD ON P.DestinationId = PD.Id
  				LEFT OUTER JOIN ApplicationPushNotificationSettings A ON A.ApplicationName = @ApplicationName
  			WHERE P.ContentSourceType = @ContentSourceType
  				AND (P.DeliveryStatus = 0 /*Scheduled*/ OR P.DeliveryStatus = 2 /*Retrying*/)
  				AND P.RetryCount <= CONVERT(int, dbo.GetJSONValue(A.PushNotificationSettingsJson, 'RetryAttempts', default, default))
  */
  			UPDATE P
  				SET P.DeliveryStatus = 1 /*Sent*/, 
					P.RetryCount = P.RetryCount + 1 /*Count Increase*/,
					P.BadgeId = N.BID,
					P.RecUpdatedDt=SYSDATETIMEOFFSET()
  			FROM PushNotificationItems P
  				JOIN @Notifications N ON P.Id = N.Id
  
  			SELECT
  				P.Id,
  				P.ContentSourceType,
  				P.UserId,
  				P.DestinationId,
  				P.CreatedDate,
  				P.ScheduledSendDate,
  				P.DeliveryStatus,
  				P.RetryCount,
  				P.MessageContent,
  				P.IsEnabled,
  				P.RecCreatedDt,
  				P.RecCreatedBy,
  				P.RecUpdatedBy,
  				P.RecUpdatedDt,
  				PD.DestinationAddress,
  				PD.DestinationSettings,
  				PD.DestinationType,
  				PD.FromName,
  				PD.IsEnabled AS IsDestinationEnabled,
  				PD.IsDefault AS IsDestinationDefault,
				P.BadgeId
  			FROM PushNotificationItems P
  				LEFT OUTER JOIN PushNotificationDestinations PD ON P.DestinationId = PD.Id
  				JOIN @Notifications N ON P.Id = N.Id
  		END
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertHadithTopics_Ad]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[sp_InsertHadithTopics_Ad]
@ParentID int,
@SeqID int,
@TopicUrdu nvarchar(max),
@TopicArabic nvarchar(max)
AS
BEGIN
Insert into HadithTopics (ParentID,SeqID,TopicUrdu,TopicArabic) 
values(@ParentID,@SeqID,@TopicUrdu,@TopicArabic)
END


GO
/****** Object:  StoredProcedure [dbo].[sp_InsertIntoFlatData_Ad]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertIntoFlatData_Ad]
@HadithBookId int
AS
BEGIN
	Insert into FlatData(HadithBookID,HadithBookName,HadithBookNameUrdu, HadithBookNameEng,
	IdKutab,HiddenIdKutab,IDPKkutab,BookID,kitaabNameUrdu, KitaabNameEng,kitaabNameArabic,

	IdAbwaab,HiddenIdAbwaab,IDPKAbwaab,KitaabID,BaabNameArabic,
	BaabNameUrdu, BaabNameEng,TarjumatulBaabArabic,TarjumatulBaabUrdu,

	IdAhadith, HadeesNumber,HadeesNumberTOne,HadeesNumberTTwo,HadeesNumberTThree,HadeesNumberTFour,HadeesNumberTFive,
	HadeesNumberTSix, HadeesNumberTSeven,HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen ,
	BaabID,HadithArabicText,
	HadithUrduText,HadithUrduTextOne,HadithUrduTextTwo,HadithUrduTextThree,HadithUrduTextFour,HadithUrduTextFive,
	HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
	HadithHashiaText,HadithHashiaTextOne,HadithHashiaTextTwo,HadithHashiaTextThree,HadithHashiaTextFour,HadithHashiaTextFive,
	HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
	HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,
	HadithHukamAjmali,HadithHukamAjmaliOne, HadithHukamAjmaliTwo, HadithHukamAjmaliThree, HadithHukamAjmaliFour, HadithHukamAjmaliFive,
	HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
	HadithHukamTafseeli,HadithMouzuhArabic,HadithMouzuhUrdu,HadithHukamTafseeliArabic,TakhreejUrls,KitaabTamheedArabic, KitaabTamheedUrdu, AbwaabTamheedArabic, AbwaabTamheedUrdu,
	TarjumatulBaabUrduOne,TarjumatulBaabUrduTwo,TarjumatulBaabUrduThree,TarjumatulBaabUrduFour,TarjumatulBaabUrduFive,TarjumatulBaabUrduSix,TarjumatulBaabUrduSeven,
	TarjumatulBaabUrduEight,TarjumatulBaabUrduNine,TarjumatulBaabUrduTen)
	
	Select B.HadithBookID,B.HadithBookName, B.HadithBookNameUrdu, B.HadithBookNameEng,

	K.ID,K.HiddenID,K.IDPK,K.BookID,K.kitaabNameUrdu, KitaabNameEng,K.kitaabNameArabic,

	A.ID,A.HiddenID,A.IDPK,A.KitaabID,A.BaabNameArabic,A.BaabNameUrdu, A.BaabNameEng,A.TarjumatulBaabArabic,A.TarjumatulBaabUrdu,

	H.Id,H.HadeesNumber,H.HadeesNumberTOne,H.HadeesNumberTTwo,H.HadeesNumberTThree,H.HadeesNumberTFour,H.HadeesNumberTFive,
	HadeesNumberTSix, HadeesNumberTSeven,HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen ,
	H.BaabID,H.HadithArabicText,
	H.HadithUrduText,H.HadithUrduTextOne,H.HadithUrduTextTwo,H.HadithUrduTextThree,H.HadithUrduTextFour,H.HadithUrduTextFive,
	HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
	H.HadithHashiaText,H.HadithHashiaTextOne,H.HadithHashiaTextTwo,H.HadithHashiaTextThree,H.HadithHashiaTextFour,H.HadithHashiaTextFive,
	HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
	H.HadithTypeAtraaf,H.HadithTypeRawaat,H.HadithTypeQFT,
	H.HadithHukamAjmali, HadithHukamAjmaliOne, HadithHukamAjmaliTwo, HadithHukamAjmaliThree, HadithHukamAjmaliFour, HadithHukamAjmaliFive,
	HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
	H.HadithHukamTafseeli,H.HadithMouzuhArabic, H.HadithMouzuhUrdu,H.HadithHukamTafseeliArabic,H.TakhreejUrls,K.KitaabTamheedArabic, K.KitaabTamheedUrdu, A.AbwaabTamheedArabic, A.AbwaabTamheedUrdu,
	A.TarjumatulBaabUrduOne,A.TarjumatulBaabUrduTwo,A.TarjumatulBaabUrduThree,A.TarjumatulBaabUrduFour,A.TarjumatulBaabUrduFive,A.TarjumatulBaabUrduSix,A.TarjumatulBaabUrduSeven,
	A.TarjumatulBaabUrduEight,A.TarjumatulBaabUrduNine,A.TarjumatulBaabUrduTen
	 from
	 HadithBooksName B
	INNER JOIN Kutab K ON K.BookID = B.HadithBookID
	INNER JOIN Abwaab A ON A.KitaabID = K.IDPK
	INNER JOIN Ahadith H ON H.BaabID = A.IDPK
	WHERE  HadithBookID = @HadithBookId
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_loadFlatData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE proc [dbo].[sp_loadFlatData]
	@TopicId int,
	@isEnglish bit=0,
	@pNo int,
	@pSize int,
	@bookList varchar(50)='0',
	@BukhariTarqeem nvarchar(256),
	@MuslimTarqeem nvarchar(256),
	@DaudTarqeem nvarchar(256),
	@TrimziTarqeem nvarchar(256),
	@NisaiTarqeem nvarchar(256),
	@MajahTarqeem nvarchar(256),
	@BukhariTranslation nvarchar(256),
	@MuslimTranslation nvarchar(256),
	@DaudTranslation nvarchar(256),
	@TrimziTranslation nvarchar(256),
	@NisaiTranslation nvarchar(256),
	@MajahTranslation nvarchar(256),
	@TotalRecords bigint=NULL
AS
BEGIN
	SELECT @TotalRecords=Count(*)
		FROM
		(
			SELECT ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
			FROM flatTopics ft
			INNER JOIN HadithTopicsToAhadith hta on hta.MozuID=ft.ChildID
			INNER JOIN HadithTopics ht on ht.IDPK=ft.ChildID
			WHERE ft.MozuID=@TopicId 
			GROUP BY ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
		) GroupData
		INNER JOIN FlatData Fd on Fd.HadeesNumber=GroupData.HadithNumber and fd.HadithBookID= GroupData.HadithBookID
		INNER JOIN
			(
			SELECT Token AS HadithBookID FROM dbo.String_To_Table(@booklist,',')
			)Data ON Fd.HadithBookID = Data.HadithBookID

	SELECT dbo.GetMyTopicsInCSV(@TopicId,MohaddisHadeesNumber,HadithBookID,1, @isEnglish) TopicsUrduCSV,dbo.GetMyTopicsInCSV(@TopicId,MohaddisHadeesNumber,HadithBookID,0, @isEnglish) TopicsArabicCSV, RowNo,HadithBookID,HadithBookName,HadithBookNameUrdu, HadithBookNameEng, BaabNameEng, KitaabNameEng ,IDPKkutab,kitaabNameArabic,kitaabNameUrdu,IDPKAbwaab,BaabNameArabic,
	BaabNameUrdu, BaabNameEng ,HadeesNumber, MohaddisHadeesNumber,HadithArabicText,	Case When DataLength(HadithUrduText) > 570 Then SUBSTRING(HadithUrduText,0,570) + '...' Else HadithUrduText End As HadithUrduText,HadithHashiaText,HadithTypeAtraaf,HadithTypeRawaat,
	HadithTypeQFT,HadithHukamAjmali,HadithHukamTafseeli,HadithMouzuhArabic,
	HadithMouzuhUrdu,HadithHukamTafseeliArabic,IdAhadith, @TotalRecords AS TotalRecords
  FROM
  (
	Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,Fd.HadithBookID,HadithBookName,
		CASE WHEN @isEnglish=0 THEN HadithBookNameUrdu ELSE HadithBookNameEng END AS HadithBookNameUrdu, HadithBookNameEng,IDPKkutab, 
		KitaabNameEng, kitaabNameArabic,CASE WHEN @isEnglish=0 THEN kitaabNameUrdu ELSE KitaabNameEng END AS kitaabNameUrdu,IDPKAbwaab,
	(CONVERT(float, (CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
		WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
		WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
		WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
		WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

		WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
		WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
		WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
		WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
		WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
		WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

		WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
		WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
		WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
		WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
		WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

		WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
		WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
		WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
		WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
		WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
		WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

		WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
		WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
		WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
		WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
		WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

		WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
		WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
		WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
		WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
		WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
		WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

		WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
		WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
		WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
		WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
		WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

		WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
		WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
		WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
		WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
		WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
		WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

		WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
		WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
		WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
		WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
		WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

		WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
		WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
		WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
		WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
		WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
		WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

		WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
		WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
		WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
		WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
		WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

		WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
		WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
		WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
		WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
		WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
		WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
			END))) AS HadeesNumber, HadeesNumber AS MohaddisHadeesNumber,
	HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,HadithHukamTafseeli,
	HadithMouzuhArabic,	HadithMouzuhUrdu,HadithHukamTafseeliArabic,IdAhadith,
	Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
	--Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,
	CASE WHEN @isEnglish=0 THEN BaabNameUrdu ELSE BaabNameEng END AS BaabNameUrdu,
	Case When Len(BaabNameEng) > 50 Then Left(BaabNameEng,50) + '...' Else BaabNameEng End As BaabNameEng,
	Case When DataLength(HadithArabicText) > 630 Then SUBSTRING(HadithArabicText,0,630) + '...' Else HadithArabicText End As HadithArabicText,
	(CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
		WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
		WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
		WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
		WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

		WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
		WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
		WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
		WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
		WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
		WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

		WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
		WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
		WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
		WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
		WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

		WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
		WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
		WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
		WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
		WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
		WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

		WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
		WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
		WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
		WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
		WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

		WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
		WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
		WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
		WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
		WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
		WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

		WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
		WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
		WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
		WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
		WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

		WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
		WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
		WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
		WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
		WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
		WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

		WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
		WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
		WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
		WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
		WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

		WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
		WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
		WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
		WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
		WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
		WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

		WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
		WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
		WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
		WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
		WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

		WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
		WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
		WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
		WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
		WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
		WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
			END) AS HadithUrduText,
	Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  FROM
  (
	SELECT ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
	FROM flatTopics ft
	INNER JOIN HadithTopicsToAhadith hta on hta.MozuID=ft.ChildID
	INNER JOIN HadithTopics ht on ht.IDPK=ft.ChildID
	INNER JOIN FlatData fd on fd.HadithBookID=hta.HadithBookID and fd.HadeesNumber=hta.HadithNumber
	WHERE ft.MozuID=@TopicId --and fd.HadeesNumber=3
	GROUP BY ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
   )GroupData
  INNER JOIN FlatData Fd on Fd.HadeesNumber=GroupData.HadithNumber and fd.HadithBookID= GroupData.HadithBookID
	INNER JOIN
		(
			SELECT Token AS HadithBookID FROM dbo.String_To_Table(@booklist,',')
		)Data ON Fd.HadithBookID = Data.HadithBookID	
	) Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)


--Returning no of rows

	SELECT @TotalRecords AS TotalRecords

End

GO
/****** Object:  StoredProcedure [dbo].[sp_loadFlatData_bk20181103]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_loadFlatData_bk20181103]
	@TopicId int,
	@pNo int,
	@pSize int,
	@bookList varchar(50)='0',
	@BukhariTarqeem nvarchar(256),
	@MuslimTarqeem nvarchar(256),
	@DaudTarqeem nvarchar(256),
	@TrimziTarqeem nvarchar(256),
	@NisaiTarqeem nvarchar(256),
	@MajahTarqeem nvarchar(256),
	@BukhariTranslation nvarchar(256),
	@MuslimTranslation nvarchar(256),
	@DaudTranslation nvarchar(256),
	@TrimziTranslation nvarchar(256),
	@NisaiTranslation nvarchar(256),
	@MajahTranslation nvarchar(256)
AS
BEGIN


	SELECT dbo.GetMyTopicsInCSV(@TopicId,HadeesNumber,HadithBookID,1) TopicsUrduCSV,dbo.GetMyTopicsInCSV(@TopicId,HadeesNumber,HadithBookID,0) TopicsArabicCSV, RowNo,HadithBookID,HadithBookName,HadithBookNameUrdu,IDPKkutab,kitaabNameArabic,kitaabNameUrdu,IDPKAbwaab,BaabNameArabic,
	BaabNameUrdu,HadeesNumber,HadithArabicText,	Case When DataLength(HadithUrduText) > 570 Then SUBSTRING(HadithUrduText,0,570) + '...' Else HadithUrduText End As HadithUrduText,HadithHashiaText,HadithTypeAtraaf,HadithTypeRawaat,
	HadithTypeQFT,HadithHukamAjmali,HadithHukamTafseeli,HadithMouzuhArabic,
	HadithMouzuhUrdu,HadithHukamTafseeliArabic,IdAhadith
  FROM
  (
	Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,Fd.HadithBookID,HadithBookName,HadithBookNameUrdu,IDPKkutab,kitaabNameArabic,
	kitaabNameUrdu,IDPKAbwaab,
	(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
		WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
		WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
		WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
		WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

		WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
		WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
		WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
		WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
		WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
		WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

		WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
		WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
		WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
		WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
		WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

		WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
		WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
		WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
		WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
		WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
		WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

		WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
		WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
		WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
		WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
		WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

		WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
		WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
		WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
		WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
		WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
		WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

		WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
		WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
		WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
		WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
		WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

		WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
		WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
		WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
		WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
		WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
		WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

		WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
		WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
		WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
		WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
		WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

		WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
		WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
		WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
		WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
		WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
		WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

		WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
		WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
		WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
		WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
		WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

		WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
		WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
		WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
		WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
		WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
		WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
			END) AS HadeesNumber,
	HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,HadithHukamTafseeli,
	HadithMouzuhArabic,	HadithMouzuhUrdu,HadithHukamTafseeliArabic,IdAhadith,
	Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
	Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,
	Case When DataLength(HadithArabicText) > 630 Then SUBSTRING(HadithArabicText,0,630) + '...' Else HadithArabicText End As HadithArabicText,
	(CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
		WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
		WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
		WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
		WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

		WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
		WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
		WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
		WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
		WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
		WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

		WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
		WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
		WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
		WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
		WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

		WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
		WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
		WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
		WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
		WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
		WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

		WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
		WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
		WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
		WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
		WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

		WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
		WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
		WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
		WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
		WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
		WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

		WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
		WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
		WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
		WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
		WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

		WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
		WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
		WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
		WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
		WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
		WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

		WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
		WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
		WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
		WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
		WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

		WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
		WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
		WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
		WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
		WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
		WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

		WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
		WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
		WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
		WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
		WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

		WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
		WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
		WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
		WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
		WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
		WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
			END) AS HadithUrduText,
	Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  FROM
  (
	SELECT ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
	FROM flatTopics ft
	INNER JOIN HadithTopicsToAhadith hta on hta.MozuID=ft.ChildID
	INNER JOIN HadithTopics ht on ht.IDPK=ft.ChildID
	INNER JOIN FlatData fd on fd.HadithBookID=hta.HadithBookID and fd.HadeesNumber=hta.HadithNumber
	WHERE ft.MozuID=@TopicId --and fd.HadeesNumber=3
	GROUP BY ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
   )GroupData
  INNER JOIN FlatData Fd on Fd.HadeesNumber=GroupData.HadithNumber and fd.HadithBookID= GroupData.HadithBookID
	INNER JOIN
		(
			SELECT Token AS HadithBookID FROM dbo.String_To_Table(@booklist,',')
		)Data ON Fd.HadithBookID = Data.HadithBookID	
	) Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)


--Returning no of rows

	



	SELECT Count(*) TotalRecords
	FROM
	(
		SELECT ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
		FROM flatTopics ft
		INNER JOIN HadithTopicsToAhadith hta on hta.MozuID=ft.ChildID
		INNER JOIN HadithTopics ht on ht.IDPK=ft.ChildID
		WHERE ft.MozuID=@TopicId 
		GROUP BY ft.MozuID,Hta.HadithBookID,Hta.HadithNumber
    ) GroupData
	INNER JOIN FlatData Fd on Fd.HadeesNumber=GroupData.HadithNumber and fd.HadithBookID= GroupData.HadithBookID
	INNER JOIN
		(
		SELECT Token AS HadithBookID FROM dbo.String_To_Table(@booklist,',')
		)Data ON Fd.HadithBookID = Data.HadithBookID	

End

GO
/****** Object:  StoredProcedure [dbo].[sp_searchCatalog_Ad]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_searchCatalog_Ad]
AS
BEGIN


ALTER FULLTEXT CATALOG searchCatalog 
REBUILD
  
  END


GO
/****** Object:  StoredProcedure [dbo].[sp_SearchInAbwabOrKutab]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE PROC [dbo].[sp_SearchInAbwabOrKutab]
@searchedText nvarchar(max),
@isAdvance bit,
@isKutab bit,
@isUrdu bit,
@pNo int,
@pSize int,
@bookList nvarchar(50)=N'0',
@isEnglish bit=0
AS
BEGIN

IF @isAdvance<>1
	
	BEGIN

	IF @isKutab<>1
	BEGIN
		 -- Search in Abwaab
	IF @isUrdu<>1 AND @isEnglish<>1
		BEGIN
			-- Search Abwaab in arabic
			SELECT RowNo, IDPK,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu, BaabNameEng FROM
			(
			 SELECT  ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo,HadithBookName,kitaabNameArabic,BaabNameEng,
			 KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,A.IDPK FROM Abwaab A  
				INNER JOIN kutab k ON k.IDPK=A.KitaabID 
				INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid  
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID
				WHERE BaabNameArabic LIKE N'%'+@searchedText+'%'		 
			 )	
			  Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

 
			SELECT COUNT(*) TotalRecords  FROM  Abwaab A  
				INNER JOIN kutab k ON k.IDPK=A.KitaabID 
				INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID 
			  where BaabNameArabic LIKE N'%'+@searchedText+'%'
		END

 ELSE IF @isUrdu=1

	BEGIN 
		-- Search abwaab in urdu
		SELECT RowNo, IDPK,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu, BaabNameEng FROM
		(
		 SELECT  ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo,HadithBookName,kitaabNameArabic,BaabNameEng,
		 KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,A.IDPK FROM Abwaab A  
			 INNER JOIN kutab k ON k.IDPK=A.KitaabID 
			 INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
			 INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID 
          where BaabNameUrdu LIKE N'%'+@searchedText+'%'		 
		)	Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)
 
		SELECT COUNT(*) TotalRecords  FROM  Abwaab A  
			INNER JOIN kutab k ON k.IDPK=A.KitaabID 
			INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
			INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
			Data1  ON hbn.HadithBookId = Data1.HadithBokID 
          where BaabNameUrdu LIKE N'%'+@searchedText+'%'

	END
	
	ELSE

		BEGIN 
			-- Search abwaab in urdu
			SELECT RowNo, IDPK,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu, BaabNameEng FROM
			(
			 SELECT  ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo,HadithBookName,kitaabNameArabic, BaabNameEng,
			 KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,A.IDPK FROM Abwaab A  
				 INNER JOIN kutab k ON k.IDPK=A.KitaabID 
				 INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
				 INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID 
			  where BaabNameEng LIKE N'%'+@searchedText+'%'		 
			)	Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)
 
			SELECT COUNT(*) TotalRecords  FROM  Abwaab A  
				INNER JOIN kutab k ON k.IDPK=A.KitaabID 
				INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID 
			  where BaabNameEng LIKE N'%'+@searchedText+'%'

		END
END

ELSE

	BEGIN
			-- Search in Kutab 
	IF @isUrdu<>1 AND @isEnglish<>1
	BEGIN 
			-- Search Kutab in arabic
		SELECT RowNo, HadithBookName, idpk,kitaabNameArabic,KitaabNameUrdu, KitaabNameEng FROM
		 (
			SELECT ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo, HadithBookName, 
			idpk,KitaabNameUrdu,kitaabNameArabic, KitaabNameEng FROM kutab k 
				INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID 
			WHERE kitaabNameArabic like N'%'+@searchedText+'%'	
		  )
		Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

		SELECT COUNT(*) TotalRecords  FROM   kutab k 
			INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID  
			INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID
			WHERE kitaabNameArabic like N'%'+@searchedText+'%'
	END 

 ELSE IF @isUrdu=1

	BEGIN 
	--Search Kutab in Urdu
		SELECT RowNo, HadithBookName, idpk,kitaabNameArabic,KitaabNameUrdu, KitaabNameEng FROM
		(
			SELECT ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo, HadithBookName, 
			idpk,KitaabNameUrdu,kitaabNameArabic, KitaabNameEng FROM kutab k 
				INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID 
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID
			WHERE kitaabNameUrdu like N'%'+@searchedText+'%'	
		 )
		  Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

			SELECT COUNT(*) TotalRecords  FROM   kutab k 
				INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID  
		WHERE kitaabNameUrdu like N'%'+@searchedText+'%'
	END

	ELSE

		BEGIN 
		--Search Kutab in Urdu
			SELECT RowNo, HadithBookName, idpk,kitaabNameArabic,KitaabNameUrdu, KitaabNameEng FROM
			(
				SELECT ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo, HadithBookName, 
				idpk,KitaabNameUrdu,kitaabNameArabic, KitaabNameEng FROM kutab k 
					INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID 
					INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
						Data1  ON hbn.HadithBookId = Data1.HadithBokID
				WHERE KitaabNameEng like N'%'+@searchedText+'%'	
			 )
			  Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

				SELECT COUNT(*) TotalRecords  FROM   kutab k 
					INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID
					INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,','))
						Data1  ON hbn.HadithBookId = Data1.HadithBokID  
			WHERE KitaabNameEng like N'%'+@searchedText+'%'
		END

	
END
	
	END

ELSE
	BEGIN 
	DECLARE @Query nvarchar(max)



	IF @isKutab<>1
	BEGIN		 
	IF @isUrdu<>1 AND @isEnglish<>1
		BEGIN			
		SET @Query=N'SELECT RowNo, IDPK,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,BaabNameEng FROM
		(
		 SELECT  ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo,HadithBookName,kitaabNameArabic,BaabNameEng,
		 KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,A.IDPK FROM Abwaab A  
			INNER JOIN kutab k ON k.IDPK=A.KitaabID 
			INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid  
			INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'',''))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID
               where @@@STRINGCLAUSE@@@		 
		 )	
		  Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

 
		SELECT COUNT(*) TotalRecords  FROM  Abwaab A  
		 INNER JOIN kutab k ON k.IDPK=A.KitaabID 
		 INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
		 INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'','')) 
			Data1  ON hbn.HadithBookId = Data1.HadithBokID 
          where @@@STRINGCLAUSE@@@'
		END

 ELSE

	BEGIN 
		
		SET @Query=N'SELECT RowNo, IDPK,HadithBookName,kitaabNameArabic,KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,BaabNameEng FROM
		(
		 SELECT  ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo,HadithBookName,kitaabNameArabic,
		 KitaabNameUrdu,BaabNameArabic,BaabNameUrdu,A.IDPK FROM Abwaab A  
			 INNER JOIN kutab k ON k.IDPK=A.KitaabID 
			 INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
			 INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'','')) 
				Data1  ON hbn.HadithBookId = Data1.HadithBokID 
          where @@@STRINGCLAUSE@@@		 
		)	Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)
 
		SELECT COUNT(*) TotalRecords  FROM  Abwaab A  
			 INNER JOIN kutab k ON k.IDPK=A.KitaabID 
			 INNER JOIN HadithBooksName hbn ON hbn.hadithbookid=k.bookid 
			 INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'',''))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID 
          where @@@STRINGCLAUSE@@@'

	END
	

END

ELSE

	BEGIN
			
	IF @isUrdu<>1 AND @isEnglish<>1
	BEGIN 
			
		SET @Query=N'SELECT RowNo, HadithBookName, idpk,kitaabNameArabic,KitaabNameUrdu,KitaabNameEng FROM
		 (
			SELECT ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo, HadithBookName, 
			idpk,KitaabNameUrdu,kitaabNameArabic,KitaabNameEng FROM kutab k 
				INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'',''))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID 
			WHERE @@@STRINGCLAUSE@@@	
		  )
		Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

		SELECT COUNT(*) TotalRecords  FROM   kutab k 
			INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID  
			INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'',''))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID
			WHERE @@@STRINGCLAUSE@@@'
	END 

 ELSE

	BEGIN 
	
		SET @Query=N'SELECT RowNo, HadithBookName, idpk,kitaabNameArabic,KitaabNameUrdu,KitaabNameEng FROM
		(
			SELECT ROW_NUMBER() OVER(ORDER BY HadithBookID) AS RowNo, HadithBookName, 
			idpk,KitaabNameUrdu,kitaabNameArabic,KitaabNameEng FROM kutab k 
				INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID 
				INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'',''))
					Data1  ON hbn.HadithBookId = Data1.HadithBokID
			WHERE @@@STRINGCLAUSE@@@	
		 )
		Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

		SELECT COUNT(*) TotalRecords  FROM   kutab k 
			INNER JOIN hadithbooksName hbn ON hbn.HadithBookID= k.bookID
			INNER JOIN(SELECT Token AS HadithBokID FROM dbo.String_To_Table(@bookList,'',''))
				Data1  ON hbn.HadithBookId = Data1.HadithBokID  
		WHERE @@@STRINGCLAUSE@@@'
	END

	
END
		
		
	SET @Query = REPLACE(@Query, '@@@STRINGCLAUSE@@@', @searchedText)
	
	SET @Query = REPLACE(@Query, '@pNo', @pNo)
	SET @Query = REPLACE(@Query, '@pSize', @pSize)
	
	EXECUTE sp_executesql @Query, N'@bookList nvarchar(50)', @bookList

	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTopics_ToBeAdded_Ad]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[sp_SearchTopics_ToBeAdded_Ad]
@HadithNumber int,
@HadithBookID int,
@isUrdu bit,
@search nvarchar(500)
AS 
BEGIN
 IF @isUrdu<>1
BEGIN
select IDPK,TopicUrdu,TopicArabic 
from HadithTopics Htopics
left join(
Select Ht.MozuID from HadithTopicsToAhadith Ht 
where HadithNumber=@HadithNumber and HadithBookID=@HadithBookID
) Data on Htopics.IDPK=Data.MozuID
where TopicArabic like N'%'+@search+'%'
END
ELSE
BEGIN
select IDPK,TopicUrdu,TopicArabic 
from HadithTopics Htopics
left join(
Select Ht.MozuID from HadithTopicsToAhadith Ht 
where HadithNumber=@HadithNumber and HadithBookID=@HadithBookID
) Data on Htopics.IDPK=Data.MozuID
where TopicUrdu like N'%'+@search+'%'
END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTopics_TopicsInsert_Ad]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchTopics_TopicsInsert_Ad]
@isUrdu bit,
@search nvarchar(500)
AS 
BEGIN
 IF @isUrdu<>1
BEGIN
select IDPK,ParentID,SeqID,TopicUrdu,TopicArabic from HadithTopics
 where TopicArabic like N'%'+@search+'%'
END
ELSE
BEGIN
select IDPK,ParentID,SeqID,TopicUrdu,TopicArabic from HadithTopics
 where TopicUrdu like N'%'+@search+'%'
END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTopicsAd]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[sp_SearchTopicsAd]
@HadithBookID int,
@HadithNumber int
AS
BEGIN
Select Hta.ID, Ht.IDPK,Ht.TopicUrdu,Ht.TopicArabic from HadithTopics Ht 
inner join HadithTopicsToAhadith Hta on Hta.MozuID=Ht.IDPK 
where Hta.HadithNumber=@HadithNumber and Hta.HadithBookID=@HadithBookID
order by Hta.ID
END


GO
/****** Object:  StoredProcedure [dbo].[sp_takhreejAD_Insert]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_takhreejAD_Insert]
@HadithIDPresent int,
@HadithIDTakhreej int,
@BookNamePresent nvarchar(255),
@BookNameTakhreej nvarchar(255),
@availability int,
@HadithBookIdPresent int,
@HadithBookIdTakhreej int
AS
BEGIN
insert into Takhreej(HadithIDPresent,HadithIDTakhreej,BookNamePresent,BookNameTakhreej,availability,
HadithBookIdPresent,HadithBookIdTakhreej) values (@HadithIDPresent,@HadithIDTakhreej,@BookNamePresent,@BookNameTakhreej,@availability,@HadithBookIdPresent,@HadithBookIdTakhreej)

END



GO
/****** Object:  StoredProcedure [dbo].[sp_TakhreejAdmin]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_TakhreejAdmin]
@HadithBookIdPresent int,
@HadithIDPresent int
AS
BEGIN

SELECT ID,HadithIDTakhreej,
CASE WHEN HadithBookIdTakhreej=1 THEN BookNameTakhreej+N' 4-ترقيم فتح الباري(برنامج الكتب التسعة)' 
	WHEN HadithBookIdTakhreej=2 THEN BookNameTakhreej +N' 4-ترقيم فؤاد عبد الباقي (برنامج الكتب التسعة)'
	WHEN HadithBookIdTakhreej=3 THEN BookNameTakhreej +N' 4- ترقيم محي الدين (برنامج الكتب التسعة)' 
	WHEN HadithBookIdTakhreej=4 THEN BookNameTakhreej +N' 4- ترقيم أحمد شاكر (برنامج الكتب التسعة)'
	WHEN HadithBookIdTakhreej=5 THEN BookNameTakhreej +N' 4- ترقيم أبي غدّة (برنامج الكتب التسعة)'
	WHEN HadithBookIdTakhreej=6 THEN BookNameTakhreej +N' 4- ترقيم فؤاد عبد الباقي (برنامج الكتب التسعة)'
	ELSE BookNameTakhreej END AS BookNameTakhreej,
	CASE WHEN BookNameTakhreej LIKE N'%مُوطّأ مَالك%' THEN 7
	WHEN BookNameTakhreej LIKE N'%مُسنَد أحمَد%' THEN 8
	WHEN BookNameTakhreej LIKE N'%سُنن الدّارمي%' THEN 9
	ELSE HadithBookIdTakhreej END AS TakhreejBookId

FROM Takhreej
WHERE HadithBookIdPresent=@HadithBookIdPresent and HadithIDPresent=@HadithIDPresent
ORDER BY TakhreejBookId,HadithIDTakhreej

END

GO
/****** Object:  StoredProcedure [dbo].[sp_takhreejData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_takhreejData] -- [sp_takhreejData] 5,1,'1,2,3,4,5,6',1,10
@bookID int,
@hno int,
@bookList varchar(50)='0',
@pNo int,
@pSize int,
@isAdvance bit=0
AS
BEGIN

Declare @data as Table (id int identity(1,1),HIP int, HIT int, BNP nvarchar(100),BNT nvarchar(100))

insert into @data(HIP,HIT,BNP,BNT)
select distinct HadithIDPresent, HadithIDTakhreej, BookNamePresent, BookNameTakhreej 
From takhreej T
inner join Ahadith A on A.HadeesNumber = T.HadithIDPresent
inner join Abwaab B on B.IDPK = A.BaabID
inner join Kutab K on K.IDPK = B.KitaabID
inner join HadithBooksName N on N.HadithBookID = K.BookID
where HadithIDPresent  = @hno and N.HadithBookID = @bookID

--select * from @data

Declare @dcount int = (select COUNT(*) from @data)
Declare @counter int = 1

Declare @availableResult as Table (id int identity(1,1),HadithBookName nvarchar(MAX), HadithBookID int,  KutabID int, 
 kitaabnamearabic nvarchar(MAX),kitaaburdu nvarchar(MAX), AbwaabID int,
baabarabic nvarchar(MAX),baaburdu nvarchar(MAX), HadeesNumber int, HadithArabicText nvarchar(MAX)
,HadithUrduText nvarchar(MAX),HadithHashiaText nvarchar(MAX),HadithTypeAtraaf nvarchar(MAX),HadithTypeRawaat nvarchar(MAX),
HadithTypeQFT nvarchar(MAX),HadithHukamAjmali nvarchar(MAX),
HadithHukamTafseeli nvarchar(MAX),HadithMouzuhArabic nvarchar(MAX),HadithMouzuhUrdu nvarchar(MAX),
HadithHukamTafseeliArabic nvarchar(MAX), hadithId int)

Declare @NotAvailableResult as Table (id int identity(1,1), BookNameTakhreej  nvarchar(MAX), HadithIDTakhreej int)

Declare @exist int = 0

while @counter <= @dcount
Begin

set @exist = (
SELECT COUNT( HadithBookName)
FROM dbo.HadithBooksName AS Mazdar INNER JOIN dbo.Kutab AS Kutab ON Mazdar.HadithBookID = Kutab.BookID
INNER JOIN dbo.Abwaab AS Abwaab ON Kutab.IDPK = Abwaab.KitaabID INNER JOIN dbo.Ahadith AS Ahadith
ON Abwaab.IDPK = Ahadith.BaabID WHERE Mazdar.HadithBookName = N''+ (select  RTRIM(LTRIM(BNT)) from @data where id= @counter) +'' 
AND HadeesNumber = (select HIT from @data where id=@counter) And HadithBookID in (SELECT Token FROM dbo.String_To_Table(@bookList,','))
)

if @exist != 0
Begin

insert into @availableResult(HadithBookName , HadithBookID , KutabID ,  kitaabnamearabic ,kitaaburdu , AbwaabID ,
baabarabic ,baaburdu , HadeesNumber , HadithArabicText ,HadithUrduText ,HadithHashiaText ,HadithTypeAtraaf ,HadithTypeRawaat ,
HadithTypeQFT ,HadithHukamAjmali ,HadithHukamTafseeli ,HadithMouzuhArabic ,HadithMouzuhUrdu, HadithHukamTafseeliArabic, hadithId)

SELECT HadithBookName, HadithBookID, Kutab.IDPK AS KutabID, 
Kutab.kitaabNameArabic as kitaabnamearabic,Kutab.kitaabNameUrdu as kitaaburdu, Abwaab.IDPK AS AbwaabID,
Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As baabarabic,
Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As baaburdu, HadeesNumber, 
Case When DataLength(HadithArabicText) > 160 Then SUBSTRING(HadithArabicText,0,160) + '...' Else HadithArabicText End As HadithArabicText,
Case When DataLength(HadithUrduText) > 130 Then SUBSTRING(HadithUrduText,0,130) + '...' Else HadithUrduText End As HadithUrduText,
Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText,
HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,
HadithHukamTafseeli,HadithMouzuhArabic,HadithMouzuhUrdu,HadithHukamTafseeliArabic,Ahadith.Id
FROM dbo.HadithBooksName AS Mazdar INNER JOIN dbo.Kutab AS Kutab ON Mazdar.HadithBookID = Kutab.BookID
INNER JOIN dbo.Abwaab AS Abwaab ON Kutab.IDPK = Abwaab.KitaabID INNER JOIN dbo.Ahadith AS Ahadith
ON Abwaab.IDPK = Ahadith.BaabID WHERE Mazdar.HadithBookName = N''+ (select  RTRIM(LTRIM(BNT)) from @data where id= @counter) +'' 
AND HadeesNumber = @hno And HadithBookID in (SELECT Token FROM dbo.String_To_Table(@bookList,','))
End
Else
Begin

insert into @NotAvailableResult(BookNameTakhreej,HadithIDTakhreej)
Values ( (select BNT from @data where id = @counter),(select HIT from @data where id = @counter) )

End


set @counter = @counter + 1;
End
--select * from @availableResult --where HadithBookID = 1

declare @totalRec int
Select @totalRec = Count(HadithId) From @availableResult

Select * From (
select  ROW_NUMBER() over(order by HadithBookID) As RowNo, * from @availableResult
) As tbl Where RowNo between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)
order by HadithBookID, hadithId
Select @totalRec

select * from @NotAvailableResult


END


GO
/****** Object:  StoredProcedure [dbo].[sp_takhreejData_New]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_takhreejData_New] 
	@bookID int,
	@hno float,
	@DefaulTarqeem nvarchar(64),
	@bookList varchar(50)='0',
	@pNo int,
	@pSize int,
	@BukhariTarqeem nvarchar(256),
	@MuslimTarqeem nvarchar(256),
	@DaudTarqeem nvarchar(256),
	@TrimziTarqeem nvarchar(256),
	@NisaiTarqeem nvarchar(256),
	@MajahTarqeem nvarchar(256),
	@BukhariTranslation nvarchar(256),
	@MuslimTranslation nvarchar(256),
	@DaudTranslation nvarchar(256),
	@TrimziTranslation nvarchar(256),
	@NisaiTranslation nvarchar(256),
	@MajahTranslation nvarchar(256)
AS
BEGIN
	
	DECLARE @HadeesNumber int=null
	IF @DefaulTarqeem!='HadeesNumber'
		BEGIN
			SELECT @HadeesNumber=HadeesNumber FROM FlatData 
			WHERE ISNULL((CASE WHEN (@DefaulTarqeem='HadeesNumber') THEN HadeesNumber
				WHEN (@DefaulTarqeem='HadeesNumberTOne') THEN HadeesNumberTOne
				WHEN (@DefaulTarqeem='HadeesNumberTTwo') THEN HadeesNumberTTwo
				WHEN (@DefaulTarqeem='HadeesNumberTThree') THEN HadeesNumberTThree
				WHEN (@DefaulTarqeem='HadeesNumberTFour') THEN HadeesNumberTFour
				WHEN (@DefaulTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
				WHEN (@DefaulTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
				WHEN (@DefaulTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
				WHEN (@DefaulTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
				WHEN (@DefaulTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
					ELSE HadeesNumberTTen END),0) = @hno AND HadithBookID=@bookID

					SET @hno=@HadeesNumber

		END
	SELECT RowNo , HadithBookName,HadithBookNameUrdu, HadithBookID,KutabID,kitaabnamearabic,kitaaburdu,AbwaabID,baabarabic ,baaburdu, HadeesNumber,
	HadithArabicText,HadithHashiaText,HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,
	HadithHukamTafseeli,HadithMouzuhArabic,HadithMouzuhUrdu,HadithHukamTafseeliArabic, Id,
	CASE WHEN DataLength(HadithUrduText) > 570 THEN SUBSTRING(HadithUrduText,0,570) + '...' ELSE HadithUrduText END AS HadithUrduText FROM
	(
		SELECT ROW_NUMBER() OVER(ORDER BY Fd.HadithBookID,Fd.HadeesNumber) AS RowNo , HadithBookName,HadithBookNameUrdu, HadithBookID, Fd.IDPKkutab AS KutabID, 
		Fd.kitaabNameArabic AS kitaabnamearabic,Fd.kitaabNameUrdu AS kitaaburdu, Fd.IDPKAbwaab AS AbwaabID,
		CASE WHEN Len(BaabNameArabic) > 50 THEN Left(BaabNameArabic,50) + '...' ELSE BaabNameArabic END AS baabarabic,
		CASE WHEN Len(BaabNameUrdu) > 50 THEN Left(BaabNameUrdu,50) + '...' ELSE BaabNameUrdu End As baaburdu, 
		(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
			WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
			WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
			WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
			WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

			WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
			WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
			WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
			WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
			WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
			WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

			WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
			WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
			WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
			WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
			WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

			WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
			WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
			WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
			WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
			WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
			WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

			WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
			WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
			WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
			WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
			WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

			WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
			WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
			WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
			WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
			WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
			WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

			WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
			WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
			WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
			WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
			WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

			WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
			WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
			WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
			WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
			WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
			WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

			WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
			WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
			WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
			WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
			WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

			WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
			WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
			WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
			WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
			WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
			WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

			WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
			WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
			WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
			WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
			WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

			WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
			WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
			WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
			WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
			WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
			WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen

			END) AS HadeesNumber, 
		(CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
			WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
			WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
			WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
			WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

			WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
			WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
			WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
			WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
			WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
			WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

			WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
			WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
			WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
			WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
			WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

			WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
			WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
			WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
			WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
			WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
			WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

			WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
			WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
			WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
			WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
			WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

			WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
			WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
			WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
			WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
			WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
			WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

			WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
			WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
			WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
			WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
			WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

			WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
			WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
			WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
			WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
			WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
			WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

			WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
			WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
			WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
			WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
			WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

			WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
			WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
			WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
			WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
			WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
			WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

			WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
			WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
			WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
			WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
			WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

			WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
			WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
			WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
			WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
			WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
			WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
			END) AS HadithUrduText,
		CASE WHEN DataLength(HadithArabicText) > 630 THEN SUBSTRING(HadithArabicText,0,630) + '...' ELSE HadithArabicText END AS HadithArabicText,
		--CASE WHEN DataLength(HadithUrduText) > 570 THEN SUBSTRING(HadithUrduText,0,570) + '...' ELSE HadithUrduText END AS HadithUrduText,
		CASE WHEN DataLength(HadithHashiaText) > 140 THEN SUBSTRING(HadithHashiaText,0,140) + '...' ELSE HadithHashiaText END AS HadithHashiaText,
		HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,
		HadithHukamTafseeli,HadithMouzuhArabic,HadithMouzuhUrdu,HadithHukamTafseeliArabic,Fd.IdAhadith AS Id
		FROM Takhreej T
		INNER JOIN FlatData Fd  ON T.HadithIDTakhreej = Fd.HadeesNumberTThree and T.HadithBookIdTakhreej=Fd.HadithBookID

		INNER JOIN
			(
				SELECT Token AS HadithBokID FROM dbo.String_To_Table(@booklist,',')
			)Data ON Fd.HadithBookID = Data.HadithBokID
			
		WHERE HadithIDPresent  = @hno and T.HadithBookIdPresent= @bookID
	)	Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)


	SELECT count(*)totalAvailableRecords from Takhreej T
	INNER JOIN FlatData Fd  ON T.HadithIDTakhreej = Fd.HadeesNumberTThree and T.HadithBookIdTakhreej=Fd.HadithBookID
	INNER JOIN
		(
			SELECT Token AS HadithBokID FROM dbo.String_To_Table(@booklist,',')
		)Data ON Fd.HadithBookID = Data.HadithBokID
			
	WHERE HadithIDPresent  = @hno and T.HadithBookIdPresent= @bookID



	SELECT BookNameTakhreej,HadithIDTakhreej FROM Takhreej T
	LEFT OUTER JOIN(
		SELECT  HadithBookID,HadithBookName,HadeesNumber FROM FlatData Fd 
	      )data ON T.HadithIDTakhreej=data.HadeesNumber and T.HadithBookIdTakhreej= data.HadithBookID
	WHERE HadithIDPresent  = @hno and T.HadithBookIdPresent= @bookID and data.HadithBookID is null
	ORDER BY HadithIDTakhreej



END

GO
/****** Object:  StoredProcedure [dbo].[sp_TopicSearch]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE PROC [dbo].[sp_TopicSearch]
@TopicName nvarchar(500),
@isUrdu bit,
@pNo int,
@pSize int,
@isEnglish bit=0
AS
BEGIN

IF @isUrdu=1
	BEGIN
		Select RowNo, IDPK,TopicArabic,TopicUrdu,TopicsEng FROM
		(
			Select ROW_NUMBER() OVER(ORDER BY ParentID) AS RowNo, IDPK,TopicArabic,TopicUrdu,TopicsEng FROM HadithTopics WHERE TopicUrdu LIKE N'%'+@TopicName+'%' 
		)Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

		SELECT COUNT(*) TotalRecords  FROM  HadithTopics WHERE TopicUrdu LIKE N'%'+@TopicName+'%' 
	END

ELSE IF @isUrdu<>1 AND @isEnglish=1
	BEGIN
		Select RowNo, IDPK,TopicArabic,TopicUrdu,TopicsEng FROM
		(
			Select ROW_NUMBER() OVER(ORDER BY ParentID) AS RowNo, IDPK,TopicArabic,TopicUrdu,TopicsEng FROM HadithTopics WHERE TopicsEng LIKE N'%'+@TopicName+'%' 
		)Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

		SELECT COUNT(*) TotalRecords  FROM  HadithTopics WHERE TopicsEng LIKE N'%'+@TopicName+'%'
	END

ELSE
	BEGIN
		Select RowNo, IDPK,TopicArabic,TopicUrdu,TopicsEng FROM
		(
		  Select ROW_NUMBER() OVER(ORDER BY ParentID) AS RowNo, IDPK,TopicArabic,TopicUrdu, TopicsEng FROM HadithTopics WHERE TopicArabic LIKE N'%'+@TopicName+'%' 
		)	Data where RowNo Between (((@pNo-1)*@pSize)+1) And (@pSize*@pNo)

 
		SELECT COUNT(*) TotalRecords  FROM  HadithTopics WHERE TopicArabic LIKE N'%'+@TopicName+'%'  
	END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_HadithTopics_Ad]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[sp_Update_HadithTopics_Ad]
@IDPK int,
@ParentID int,
@SeqID int,
@TopicUrdu nvarchar(max),
@TopicArabic nvarchar(max)
AS
BEGIN
update HadithTopics set SeqID=@SeqID,TopicUrdu= @TopicUrdu,TopicArabic=@TopicArabic
where IDPK=@IDPK and ParentID=@ParentID
END


GO
/****** Object:  StoredProcedure [dbo].[sp_updateAbwaabInFlatData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_updateAbwaabInFlatData]
@IdAbwaab int,
@HiddenIdAbwaab float,
@IDPKAbwaab int,
@BaabNameArabic nvarchar(max),
@BaabNameUrdu nvarchar(max),


@TarjumatulBaabUrduOne nvarchar(max),
@TarjumatulBaabUrduTwo nvarchar(max),
@TarjumatulBaabUrduThree nvarchar(max),
@TarjumatulBaabUrduFour nvarchar(max),
@TarjumatulBaabUrduFive nvarchar(max),
@TarjumatulBaabUrduSix nvarchar(max),
@TarjumatulBaabUrduSeven nvarchar(max),
@TarjumatulBaabUrduEight nvarchar(max),
@TarjumatulBaabUrduNine nvarchar(max),
@TarjumatulBaabUrduTen nvarchar(max),


@TarjumatulBaabArabic nvarchar(max),
@TarjumatulBaabUrdu nvarchar(max),
@AbwaabTamheedArabic nvarchar(max),
@AbwaabTamheedUrdu nvarchar(max)
AS
BEGIN

UPDATE Abwaab 
  SET  ID=@IdAbwaab,
		HiddenID=@HiddenIdAbwaab,
		BaabNameUrdu=@BaabNameUrdu,
		BaabNameArabic=@BaabNameArabic,
		TarjumatulBaabArabic=@TarjumatulBaabArabic,
		TarjumatulBaabUrdu=@TarjumatulBaabUrdu,

		TarjumatulBaabUrduOne=@TarjumatulBaabUrduOne,
		TarjumatulBaabUrduTwo=@TarjumatulBaabUrduTwo,
		TarjumatulBaabUrduThree=@TarjumatulBaabUrduThree,
		TarjumatulBaabUrduFour=@TarjumatulBaabUrduFour,
		TarjumatulBaabUrduFive=@TarjumatulBaabUrduFive,
		TarjumatulBaabUrduSix=@TarjumatulBaabUrduSix,
		TarjumatulBaabUrduSeven=@TarjumatulBaabUrduSeven,
		TarjumatulBaabUrduEight=@TarjumatulBaabUrduEight,
		TarjumatulBaabUrduNine=@TarjumatulBaabUrduNine,
		TarjumatulBaabUrduTen=@TarjumatulBaabUrduTen,

		AbwaabTamheedArabic=@AbwaabTamheedArabic,
		AbwaabTamheedUrdu=@AbwaabTamheedUrdu
  WHERE IDPK =@IDPKAbwaab

UPDATE FlatData 
  SET  IdAbwaab=@IdAbwaab,
		HiddenIdAbwaab=@HiddenIdAbwaab,
		BaabNameArabic=@BaabNameArabic,
		BaabNameUrdu=@BaabNameUrdu,
		TarjumatulBaabArabic=@TarjumatulBaabArabic,
		TarjumatulBaabUrdu=@TarjumatulBaabUrdu,

		TarjumatulBaabUrduOne=@TarjumatulBaabUrduOne,
		TarjumatulBaabUrduTwo=@TarjumatulBaabUrduTwo,
		TarjumatulBaabUrduThree=@TarjumatulBaabUrduThree,
		TarjumatulBaabUrduFour=@TarjumatulBaabUrduFour,
		TarjumatulBaabUrduFive=@TarjumatulBaabUrduFive,
		TarjumatulBaabUrduSix=@TarjumatulBaabUrduSix,
		TarjumatulBaabUrduSeven=@TarjumatulBaabUrduSeven,
		TarjumatulBaabUrduEight=@TarjumatulBaabUrduEight,
		TarjumatulBaabUrduNine=@TarjumatulBaabUrduNine,
		TarjumatulBaabUrduTen=@TarjumatulBaabUrduTen,

		AbwaabTamheedArabic=@AbwaabTamheedArabic,
		AbwaabTamheedUrdu=@AbwaabTamheedUrdu
  WHERE IDPKAbwaab=@IDPKAbwaab


SELECT @@ROWCOUNT
END

GO
/****** Object:  StoredProcedure [dbo].[sp_updateKutabInFlatData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_updateKutabInFlatData]
@IdKutab int,
@HiddenIdKutab float,
@IDPKkutab int,
@kitaabNameUrdu nvarchar(max),
@kitaabNameArabic nvarchar(max),
@KitaabTamheedArabic nvarchar(max),
@KitaabTamheedUrdu nvarchar(max)
AS
BEGIN
UPDATE Kutab 
		
		SET ID =@IdKutab,
			HiddenID=@HiddenIdKutab,
			kitaabNameUrdu=@kitaabNameUrdu,
			kitaabNameArabic=@kitaabNameArabic,
			KitaabTamheedArabic=@KitaabTamheedArabic,
			KitaabTamheedUrdu=@KitaabTamheedUrdu
	  WHERE IDPK=@IDPKkutab

UPDATE FlatData
  
  SET IdKutab=@IdKutab,
	  HiddenIdKutab=@HiddenIdKutab,
	  kitaabNameArabic=@kitaabNameArabic,
	  kitaabNameUrdu=@kitaabNameUrdu,
			KitaabTamheedArabic=@KitaabTamheedArabic,
			KitaabTamheedUrdu=@KitaabTamheedUrdu
  WHERE IDPKkutab=@IDPKkutab

SELECT @@ROWCOUNT

END

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdatePushNotificationStatus]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdatePushNotificationStatus] 
	-- Add the parameters for the stored procedure here
	@Id bigint = NULL, 
	@DeliveryStatus int = NULL,
	@ScheduledSendDate datetimeoffset = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE PushNotificationItems
		SET DeliveryStatus = @DeliveryStatus, @ScheduledSendDate = @ScheduledSendDate
	WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[ups_CheckHadithDuplication]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[ups_CheckHadithDuplication]
@BaadId int
,@HadithNumber int
AS
BEGIN

DECLARE @BookID INT

SET @BookID = (
SELECT K.BookId
FROM Abwaab  A
INNER JOIN  Kutab K ON A.KitaabID = K.IDPK
WHERE A.IDPK = @BaadId
)


SELECT H.Id 
FROM Ahadith H
INNER JOIN Abwaab A ON A.IDPK = H.BaabID AND H.HadeesNumber = @HadithNumber
INNER JOIN Kutab K ON K.IDPK = A.KitaabID AND K.BookID = @BookID

END
GO
/****** Object:  StoredProcedure [dbo].[usp_AddHadithInFlatData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_AddHadithInFlatData]
  @HadeesNumber              smallint
, @BaabID                    int
AS
Begin
	insert into FlatData(
			HadithBookID,HadithBookName,HadithBookNameUrdu,IdKutab,HiddenIdKutab,IDPKkutab,
			BookID,kitaabNameUrdu,kitaabNameArabic,IdAbwaab,HiddenIdAbwaab,IDPKAbwaab,KitaabID,BaabNameArabic,
			BaabNameUrdu,TarjumatulBaabArabic,TarjumatulBaabUrdu,IdAhadith,HadeesNumber,HadeesNumberTOne,
			HadeesNumberTTwo,HadeesNumberTThree,HadeesNumberTFour,HadeesNumberTFive,
			HadeesNumberTSix, HadeesNumberTSeven,HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen 
			,BaabID,HadithArabicText,
			HadithUrduText,HadithUrduTextOne,HadithUrduTextTwo,HadithUrduTextThree,HadithUrduTextFour,HadithUrduTextFive,
			HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
			HadithHashiaText,HadithHashiaTextOne,HadithHashiaTextTwo,HadithHashiaTextThree,HadithHashiaTextFour,HadithHashiaTextFive,
			HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
			HadithTypeAtraaf,HadithTypeRawaat,HadithTypeQFT,HadithHukamAjmali,
			HadithHukamAjmaliOne,HadithHukamAjmaliTwo,HadithHukamAjmaliThree,HadithHukamAjmaliFour,HadithHukamAjmaliFive,
			HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
			HadithHukamTafseeli,HadithMouzuhArabic,HadithMouzuhUrdu,HadithHukamTafseeliArabic,TakhreejUrls,KitaabTamheedArabic, KitaabTamheedUrdu, AbwaabTamheedArabic, AbwaabTamheedUrdu,
			TarjumatulBaabUrduOne,TarjumatulBaabUrduTwo,TarjumatulBaabUrduThree,TarjumatulBaabUrduFour,TarjumatulBaabUrduFive,TarjumatulBaabUrduSix,TarjumatulBaabUrduSeven,
			TarjumatulBaabUrduEight,TarjumatulBaabUrduNine,TarjumatulBaabUrduTen)
	select 
			B.HadithBookID,B.HadithBookName, B.HadithBookNameUrdu,
			K.ID,K.HiddenID,K.IDPK,K.BookID,K.kitaabNameUrdu,K.kitaabNameArabic,
			A.ID,A.HiddenID,A.IDPK,A.KitaabID,A.BaabNameArabic,A.BaabNameUrdu,A.TarjumatulBaabArabic,A.TarjumatulBaabUrdu,
			H.Id,H.HadeesNumber,H.HadeesNumberTOne,H.HadeesNumberTTwo,H.HadeesNumberTThree,H.HadeesNumberTFour,H.HadeesNumberTFive,
			HadeesNumberTSix, HadeesNumberTSeven,HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen,
			H.BaabID,H.HadithArabicText,H.HadithUrduText,H.HadithUrduTextOne,H.HadithUrduTextTwo,H.HadithUrduTextThree,
			H.HadithUrduTextFour,H.HadithUrduTextFive,
			HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
			H.HadithHashiaText,H.HadithHashiaTextOne,H.HadithHashiaTextTwo,H.HadithHashiaTextThree,H.HadithHashiaTextFour,H.HadithHashiaTextFive,
			HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
			H.HadithTypeAtraaf,H.HadithTypeRawaat,H.HadithTypeQFT,
			H.HadithHukamAjmali,H.HadithHukamAjmaliOne,H.HadithHukamAjmaliTwo,H.HadithHukamAjmaliThree,H.HadithHukamAjmaliFour,H.HadithHukamAjmaliFive,
			HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
			H.HadithHukamTafseeli,H.HadithMouzuhArabic, H.HadithMouzuhUrdu,H.HadithHukamTafseeliArabic,H.TakhreejUrls,K.KitaabTamheedArabic, K.KitaabTamheedUrdu, A.AbwaabTamheedArabic, A.AbwaabTamheedUrdu,
			A.TarjumatulBaabUrduOne,A.TarjumatulBaabUrduTwo,A.TarjumatulBaabUrduThree,A.TarjumatulBaabUrduFour,A.TarjumatulBaabUrduFive,A.TarjumatulBaabUrduSix,A.TarjumatulBaabUrduSeven,
			A.TarjumatulBaabUrduEight,A.TarjumatulBaabUrduNine,A.TarjumatulBaabUrduTen

	from
	 HadithBooksName B
			INNER JOIN Kutab K ON K.BookID = B.HadithBookID
			INNER JOIN Abwaab A ON A.KitaabID = K.IDPK
			INNER JOIN Ahadith H ON H.BaabID = A.IDPK
		WHERE H.HadeesNumber=@HadeesNumber and H.BaabID=@BaabID
End

GO
/****** Object:  StoredProcedure [dbo].[usp_AddNewHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_AddNewHadith]
  @HadeesNumber              smallint
, @BaabID                    int
, @HadithArabicText          ntext
, @HadithUrduText            ntext

, @HadithUrduOneText            ntext
, @HadithUrduTwoText            ntext
, @HadithUrduThreeText            ntext
, @HadithUrduFourText            ntext
, @HadithUrduFiveText            ntext

, @HadithUrduTextSix            ntext
, @HadithUrduTextSeven            ntext
, @HadithUrduTextEight            ntext
, @HadithUrduTextNine            ntext
, @HadithUrduTextTen            ntext

, @HadithHashiaText          ntext
, @HadithHashiaTextOne          ntext
, @HadithHashiaTextTwo          ntext
, @HadithHashiaTextThree          ntext
, @HadithHashiaTextFour          ntext
, @HadithHashiaTextFive          ntext

, @HadithHashiaTextSix            ntext
, @HadithHashiaTextSeven            ntext
, @HadithHashiaTextEight            ntext
, @HadithHashiaTextNine            ntext
, @HadithHashiaTextTen            ntext

, @HadithTypeAtraaf          nvarchar(255)
, @HadithTypeRawaat          nvarchar(255)
, @HadithTypeQFT             nvarchar(255)

, @HadithHukamAjmali         ntext
, @HadithHukamAjmaliOne         ntext
, @HadithHukamAjmaliTwo         ntext
, @HadithHukamAjmaliThree         ntext
, @HadithHukamAjmaliFour         ntext
, @HadithHukamAjmaliFive         ntext

, @HadithHukamAjmaliSix            ntext
, @HadithHukamAjmaliSeven            ntext
, @HadithHukamAjmaliEight            ntext
, @HadithHukamAjmaliNine            ntext
, @HadithHukamAjmaliTen            ntext

, @HadithHukamTafseeli       ntext
, @HadithMouzuhArabic        ntext
, @HadithMouzuhUrdu          ntext
, @HadithHukamTafseeliArabic ntext
, @TakhreejUrls              ntext

, @HadeesNumberTOne         float
, @HadeesNumberTTwo			float
, @HadeesNumberTThree       float
, @HadeesNumberTFour        float
, @HadeesNumberTFive		float

, @HadeesNumberTSix         float
, @HadeesNumberTSeven       float
, @HadeesNumberTEight       float
, @HadeesNumberTNine        float
, @HadeesNumberTTen         float
As
Begin

INSERT INTO [dbo].[Ahadith]
           ([HadeesNumber]
		   ,HadeesNumberTOne
		   ,HadeesNumberTTwo
		   ,HadeesNumberTThree
		   ,HadeesNumberTFour
		   ,HadeesNumberTFive

		   ,HadeesNumberTSix
		   ,HadeesNumberTSeven
		   ,HadeesNumberTEight
		   ,HadeesNumberTNine
		   ,HadeesNumberTTen

           ,[BaabID]
           ,[HadithArabicText]
           ,[HadithUrduText]

		   ,[HadithUrduTextOne]
		   ,[HadithUrduTextTwo]
		   ,[HadithUrduTextThree]
		   ,[HadithUrduTextFour]
		   ,[HadithUrduTextFive]

		   ,[HadithUrduTextSix]
		   ,[HadithUrduTextSeven]
		   ,[HadithUrduTextEight]
		   ,[HadithUrduTextNine]
		   ,[HadithUrduTextTen]

           ,[HadithHashiaText]
		   ,[HadithHashiaTextOne]
		   ,[HadithHashiaTextTwo]
		   ,[HadithHashiaTextThree]
		   ,[HadithHashiaTextFour]
		   ,[HadithHashiaTextFive]

		   ,[HadithHashiaTextSix]
		   ,[HadithHashiaTextSeven]
		   ,[HadithHashiaTextEight]
		   ,[HadithHashiaTextNine]
		   ,[HadithHashiaTextTen]

           ,[HadithTypeAtraaf]
           ,[HadithTypeRawaat]
           ,[HadithTypeQFT]

           ,[HadithHukamAjmali]
		   ,[HadithHukamAjmaliOne]
		   ,[HadithHukamAjmaliTwo]
		   ,[HadithHukamAjmaliThree]
		   ,[HadithHukamAjmaliFour]
		   ,[HadithHukamAjmaliFive]

		   ,[HadithHukamAjmaliSix]
		   ,[HadithHukamAjmaliSeven]
		   ,[HadithHukamAjmaliEight]
		   ,[HadithHukamAjmaliNine]
		   ,[HadithHukamAjmaliTen]

           ,[HadithHukamTafseeli]
           ,[HadithMouzuhArabic]
           ,[HadithMouzuhUrdu]
           ,[HadithHukamTafseeliArabic]
           ,[TakhreejUrls])
     VALUES
           (@HadeesNumber
		   ,@HadeesNumberTOne
		   ,@HadeesNumberTTwo
		   ,@HadeesNumberTThree
		   ,@HadeesNumberTFour
		   ,@HadeesNumberTFive

		   ,@HadeesNumberTSix
		   ,@HadeesNumberTSeven
		   ,@HadeesNumberTEight
		   ,@HadeesNumberTNine
		   ,@HadeesNumberTTen

           ,@BaabID
           ,@HadithArabicText
           ,@HadithUrduText

		   ,@HadithUrduOneText
		   ,@HadithUrduTwoText
		   ,@HadithUrduThreeText
		   ,@HadithUrduFourText
		   ,@HadithUrduFiveText

		   ,@HadithUrduTextSix
		   ,@HadithUrduTextSeven
		   ,@HadithUrduTextEight
		   ,@HadithUrduTextNine
		   ,@HadithUrduTextTen

           ,@HadithHashiaText
		   ,@HadithHashiaTextOne
		   ,@HadithHashiaTextTwo
		   ,@HadithHashiaTextThree
		   ,@HadithHashiaTextFour
		   ,@HadithHashiaTextFive

		   ,@HadithHashiaTextSix
		   ,@HadithHashiaTextSeven
		   ,@HadithHashiaTextEight
		   ,@HadithHashiaTextNine
		   ,@HadithHashiaTextTen

           ,@HadithTypeAtraaf
           ,@HadithTypeRawaat
           ,@HadithTypeQFT

           ,@HadithHukamAjmali
           ,@HadithHukamAjmaliOne
           ,@HadithHukamAjmaliTwo
           ,@HadithHukamAjmaliThree
           ,@HadithHukamAjmaliFour
           ,@HadithHukamAjmaliFive

		   ,@HadithHukamAjmaliSix
		   ,@HadithHukamAjmaliSeven
		   ,@HadithHukamAjmaliEight
		   ,@HadithHukamAjmaliNine
		   ,@HadithHukamAjmaliTen

           ,@HadithHukamTafseeli
           ,@HadithMouzuhArabic
           ,@HadithMouzuhUrdu
           ,@HadithHukamTafseeliArabic
           ,@TakhreejUrls)


		   exec usp_AddHadithInFlatData @HadeesNumber,@BaabID

Select 'Inserted'

End


GO
/****** Object:  StoredProcedure [dbo].[usp_GetAbwaabByKitaabId]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE proc [dbo].[usp_GetAbwaabByKitaabId]
	@KitaabId int
As
	Begin
		Select Hiddenid, [dbo].[RemoveASCIICharactersInRange1](BaabNameArabic) AS BaabNameArabic, 
			BaabNameUrdu, BaabNameEng, IDPK, TarjumatulBaabArabic, TarjumatulBaabUrdu 
		From Abwaab WHERE KitaabID = @KitaabId ORDER BY Hiddenid
	End

GO
/****** Object:  StoredProcedure [dbo].[usp_GetAhadithData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_GetAhadithData] 	
  	@OffSet bigint = 0, 
  	@PageSize bigint = 20,
  	@SortColumn int = 0,
  	@SortOrder varchar(5) = 'asc',
  	@Book_Id int=NULL,
	@Hadith_No float=NULL,
	@BaabID int=NULL,
	@DefaulTarqeem  nvarchar(256)=NULL,
	@DefaultTranslation nvarchar(256)=NULL,
	@DefaultHashiya nvarchar(256)=NULL,
	@DefaultHukam nvarchar(256)=NULL
  AS
  BEGIN
  	
  		;WITH main AS(
  			SELECT FD.ID
				FROM FlatData Fd
					LEFT JOIN DefaultTarqeemAndTarjumah DT ON DT.BookId=FD.BookID AND  DT.DefaultTarqeem = @DefaulTarqeem
					LEFT JOIN DefaultTarqeemAndTarjumah TDT ON TDT.BookId=FD.BookID AND TDT.DefaultTarjumah=@DefaultTranslation

				 Where ((@BaabID IS NULL AND Fd.HadithBookID=@Book_Id) OR FD.BaabID=@BaabID) And 
				 (@Hadith_No IS NULL OR 
				  (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
					WHEN ISNULL(DT.Id,0)>0 THEN 
					(SELECT (CASE WHEN DT.DefaultTarqeem='HadeesNumber' THEN HadeesNumber 
						WHEN DT.DefaultTarqeem='HadeesNumberTOne' THEN HadeesNumberTOne 
						WHEN DT.DefaultTarqeem='HadeesNumberTTwo' THEN HadeesNumberTTwo 
						WHEN DT.DefaultTarqeem='HadeesNumberTThree' THEN HadeesNumberTThree
						WHEN DT.DefaultTarqeem='HadeesNumberTFour' THEN HadeesNumberTFour
						WHEN DT.DefaultTarqeem='HadeesNumberTFive' THEN HadeesNumberTFive
						WHEN DT.DefaultTarqeem='HadeesNumberTSix' THEN HadeesNumberTSix
						WHEN DT.DefaultTarqeem='HadeesNumberTSeven' THEN HadeesNumberTSeven
						WHEN DT.DefaultTarqeem='HadeesNumberTEight' THEN HadeesNumberTEight
						WHEN DT.DefaultTarqeem='HadeesNumberTNine' THEN HadeesNumberTNine
						WHEN DT.DefaultTarqeem='HadeesNumberTTen' THEN HadeesNumberTTen
					END) AS HadeesNumber
					FROM FlatData FDD WHERE FDD.ID=FD.ID)
					WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTOne
					WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTTwo
					WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTThree
					WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFour

					WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
					WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
					WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
					WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
					WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
						ELSE HadeesNumberTTen END) = @Hadith_No)

  		), page_data AS (
  			SELECT FD.ID, M.TotalCount FROM FlatData FD
  				CROSS APPLY (SELECT count(*) TotalCount from main) M
  			WHERE EXISTS (SELECT 1 FROM main WHERE main.Id = FD.Id)
  			ORDER BY
  				CASE WHEN @SortOrder = 'asc' THEN
  					CASE @SortColumn 
  						WHEN 0 THEN FD.HadeesNumber
  					END
  				END,
  				CASE WHEN @SortOrder = 'desc' THEN
  					CASE @SortColumn 
  						WHEN 0 THEN FD.HadeesNumber
  					END
  				END DESC
  			OFFSET @OffSet ROWS
  			FETCH NEXT @PageSize ROWS ONLY
  		)
  			SELECT (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
			WHEN ISNULL(DT.Id,0)>0 THEN 
			(SELECT (CASE WHEN DT.DefaultTarqeem='HadeesNumber' THEN HadeesNumber 
				WHEN DT.DefaultTarqeem='HadeesNumberTOne' THEN HadeesNumberTOne 
				WHEN DT.DefaultTarqeem='HadeesNumberTTwo' THEN HadeesNumberTTwo 
				WHEN DT.DefaultTarqeem='HadeesNumberTThree' THEN HadeesNumberTThree
				WHEN DT.DefaultTarqeem='HadeesNumberTFour' THEN HadeesNumberTFour
				WHEN DT.DefaultTarqeem='HadeesNumberTFive' THEN HadeesNumberTFive

				WHEN DT.DefaultTarqeem='HadeesNumberTSix' THEN HadeesNumberTSix
				WHEN DT.DefaultTarqeem='HadeesNumberTSeven' THEN HadeesNumberTSeven
				WHEN DT.DefaultTarqeem='HadeesNumberTEight' THEN HadeesNumberTEight
				WHEN DT.DefaultTarqeem='HadeesNumberTNine' THEN HadeesNumberTNine
				WHEN DT.DefaultTarqeem='HadeesNumberTTen' THEN HadeesNumberTTen
			END) AS HadeesNumber
			FROM FlatData FDD WHERE FDD.ID=FD.ID)
			WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTOne
			WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTTwo
			WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTThree
			WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFour

			WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
			WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
			WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
			WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
			WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
				ELSE HadeesNumberTTen END) AS HadeesNumber, HadeesNumber AS HadeesNumberZero,
			HadeesNumberTOne,HadeesNumberTTwo,HadeesNumberTThree,HadeesNumberTFour,HadeesNumberTFive,
			HadeesNumberTSix, HadeesNumberTSeven, HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen, BaabID, HadithArabicText,HadithBookName,HadithBookNameUrdu, HadithBookNameEng, BaabNameArabic, BaabNameEng,BaabNameUrdu,
			TarjumatulBaabArabic, 
		
			(CASE WHEN (@DefaultTranslation='HadithUrduText') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrdu
			WHEN ISNULL(TDT.Id,0)>0 THEN 
			(SELECT (CASE WHEN TDT.DefaultTarjumah='HadithUrduText' THEN TarjumatulBaabUrdu 
				WHEN TDT.DefaultTarjumah='HadithUrduTextOne' THEN TarjumatulBaabUrduOne 
				WHEN TDT.DefaultTarjumah='HadithUrduTextTwo' THEN TarjumatulBaabUrduTwo 
				WHEN TDT.DefaultTarjumah='HadithUrduTextThree' THEN TarjumatulBaabUrduThree
				WHEN TDT.DefaultTarjumah='HadithUrduTextFour' THEN TarjumatulBaabUrduFour
				WHEN TDT.DefaultTarjumah='HadithUrduTextFive' THEN TarjumatulBaabUrduFive

				WHEN TDT.DefaultTarjumah='HadithUrduTextSix' THEN TarjumatulBaabUrduSix
				WHEN TDT.DefaultTarjumah='HadithUrduTextSeven' THEN TarjumatulBaabUrduSeven
				WHEN TDT.DefaultTarjumah='HadithUrduTextEight' THEN TarjumatulBaabUrduEight
				WHEN TDT.DefaultTarjumah='HadithUrduTextNine' THEN TarjumatulBaabUrduNine
				WHEN TDT.DefaultTarjumah='HadithUrduTextTen' THEN TarjumatulBaabUrduTen

			END) AS DefaultTarjumah
			FROM FlatData FDD WHERE FDD.ID=FD.ID)
			WHEN (@DefaultTranslation='HadithUrduTextOne') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduOne
			WHEN (@DefaultTranslation='HadithUrduTextTwo') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduTwo
			WHEN (@DefaultTranslation='HadithUrduTextThree') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduThree
			WHEN (@DefaultTranslation='HadithUrduTextFour') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduFour
			WHEN (@DefaultTranslation='HadithUrduTextFive') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduFive
		 
			WHEN (@DefaultTranslation='HadithUrduTextSix') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduSix 	
			WHEN (@DefaultTranslation='HadithUrduTextSeven') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduSeven 	
			WHEN (@DefaultTranslation='HadithUrduTextEight') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduEight
			WHEN (@DefaultTranslation='HadithUrduTextNine') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduNine
			WHEN (@DefaultTranslation='HadithUrduTextTen') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduTen
				END) AS TarjumatulBaabUrdu,TarjumatulBaabUrdu AS TarjumatulBaabUrduZero, TarjumatulBaabUrduOne,
			TarjumatulBaabUrduTwo,TarjumatulBaabUrduThree,TarjumatulBaabUrduFour,TarjumatulBaabUrduFive,TarjumatulBaabUrduSix,
			TarjumatulBaabUrduSeven,TarjumatulBaabUrduEight,TarjumatulBaabUrduNine,TarjumatulBaabUrduTen,

			(CASE WHEN (@DefaultTranslation='HadithUrduText') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduText
			WHEN ISNULL(TDT.Id,0)>0 THEN 
			(SELECT (CASE WHEN TDT.DefaultTarjumah='HadithUrduText' THEN HadithUrduText 
				WHEN TDT.DefaultTarjumah='HadithUrduTextOne' THEN HadithUrduTextOne 
				WHEN TDT.DefaultTarjumah='HadithUrduTextTwo' THEN HadithUrduTextTwo 
				WHEN TDT.DefaultTarjumah='HadithUrduTextThree' THEN HadithUrduTextThree
				WHEN TDT.DefaultTarjumah='HadithUrduTextFour' THEN HadithUrduTextFour
				WHEN TDT.DefaultTarjumah='HadithUrduTextFive' THEN HadithUrduTextFive

				WHEN TDT.DefaultTarjumah='HadithUrduTextSix' THEN HadithUrduTextSix
				WHEN TDT.DefaultTarjumah='HadithUrduTextSeven' THEN HadithUrduTextSeven
				WHEN TDT.DefaultTarjumah='HadithUrduTextEight' THEN HadithUrduTextEight
				WHEN TDT.DefaultTarjumah='HadithUrduTextNine' THEN HadithUrduTextNine
				WHEN TDT.DefaultTarjumah='HadithUrduTextTen' THEN HadithUrduTextTen

			END) AS DefaultTarjumah
			FROM FlatData FDD WHERE FDD.ID=FD.ID)
			WHEN (@DefaultTranslation='HadithUrduTextOne') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextOne
			WHEN (@DefaultTranslation='HadithUrduTextTwo') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextTwo
			WHEN (@DefaultTranslation='HadithUrduTextThree') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextThree
			WHEN (@DefaultTranslation='HadithUrduTextFour') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextFour
			WHEN (@DefaultTranslation='HadithUrduTextFive') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextFive
		 
			WHEN (@DefaultTranslation='HadithUrduTextSix') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextSix 	
			WHEN (@DefaultTranslation='HadithUrduTextSeven') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextSeven 	
			WHEN (@DefaultTranslation='HadithUrduTextEight') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextEight
			WHEN (@DefaultTranslation='HadithUrduTextNine') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextNine
			WHEN (@DefaultTranslation='HadithUrduTextTen') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextTen
				END) AS HadithUrduText, HadithUrduText AS HadithUrduTextZero,
			HadithUrduTextOne,HadithUrduTextTwo,HadithUrduTextThree,HadithUrduTextFour,HadithUrduTextFive,
			HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
			(CASE WHEN (@DefaultHashiya='HadithHashiaText') THEN HadithHashiaText
			WHEN (@DefaultHashiya='HadithHashiaTextOne') THEN HadithHashiaTextOne
			WHEN (@DefaultHashiya='HadithHashiaTextTwo') THEN HadithHashiaTextTwo
			WHEN (@DefaultHashiya='HadithHashiaTextThree') THEN HadithHashiaTextThree
			WHEN (@DefaultHashiya='HadithHashiaTextFour') THEN HadithHashiaTextFour

			WHEN (@DefaultHashiya='HadithHashiaTextFive') THEN HadithHashiaTextFive
			WHEN (@DefaultHashiya='HadithHashiaTextSix') THEN HadithHashiaTextSix
			WHEN (@DefaultHashiya='HadithHashiaTextSeven') THEN HadithHashiaTextSeven
			WHEN (@DefaultHashiya='HadithHashiaTextEight') THEN HadithHashiaTextEight
			WHEN (@DefaultHashiya='HadithHashiaTextNine') THEN HadithHashiaTextNine
			WHEN (@DefaultHashiya='HadithHashiaTextTen') THEN HadithHashiaTextTen END) AS HadithHashiaText,
			HadithHashiaTextOne,HadithHashiaTextTwo, HadithHashiaTextThree, HadithHashiaTextFour, HadithHashiaTextFive, 
			HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
			HadithTypeAtraaf, KitaabNameARabic, KitaabNameEng,HadithTypeRawaat, HadithTypeQFT, 
		
			(CASE WHEN (@DefaultHukam='HadithHukamAjmali') THEN HadithHukamAjmali
			WHEN (@DefaultHukam='HadithHukamAjmaliOne') THEN HadithHukamAjmaliOne
			WHEN (@DefaultHukam='HadithHukamAjmaliTwo') THEN HadithHukamAjmaliTwo
			WHEN (@DefaultHukam='HadithHukamAjmaliThree') THEN HadithHukamAjmaliThree
			WHEN (@DefaultHukam='HadithHukamAjmaliFour') THEN HadithHukamAjmaliFour

			WHEN (@DefaultHukam='HadithHukamAjmaliFive') THEN HadithHukamAjmaliFive
			WHEN (@DefaultHukam='HadithHukamAjmaliSix') THEN HadithHukamAjmaliSix
			WHEN (@DefaultHukam='HadithHukamAjmaliSeven') THEN HadithHukamAjmaliSeven
			WHEN (@DefaultHukam='HadithHukamAjmaliEight') THEN HadithHukamAjmaliEight
			WHEN (@DefaultHukam='HadithHukamAjmaliNine') THEN HadithHukamAjmaliNine
			WHEN (@DefaultHukam='HadithHukamAjmaliTen') THEN HadithHukamAjmaliTen END) AS HadithHukamAjmali,
			HadithHukamAjmaliOne,HadithHukamAjmaliTwo, HadithHukamAjmaliThree, HadithHukamAjmaliFour, HadithHukamAjmaliFive, 
			HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
			KitaabNameUrdu, HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,
			HadithHukamTafseeliArabic, KitaabTamheedArabic, KitaabTamheedUrdu, AbwaabTamheedArabic, AbwaabTamheedUrdu, ISNULL(PD.TotalCount, 0) AS TotalCount
		From FlatData Fd
  				LEFT JOIN DefaultTarqeemAndTarjumah DT ON DT.BookId=FD.BookID AND  DT.DefaultTarqeem = @DefaulTarqeem
				LEFT JOIN DefaultTarqeemAndTarjumah TDT ON TDT.BookId=FD.BookID AND TDT.DefaultTarjumah=@DefaultTranslation
  				JOIN page_data PD ON PD.Id = Fd.Id
  		ORDER BY
  			CASE WHEN @SortOrder = 'asc' THEN
  				CASE @SortColumn 
  					WHEN 0 THEN FD.HadeesNumber
  				END
  			END,
  			CASE WHEN @SortOrder = 'desc' THEN
  				CASE @SortColumn 
  					WHEN 0 THEN FD.HadeesNumber
  				END
  			END DESC
  END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllDefaultAHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetAllDefaultAHadith]
As
Begin
	SELECT DH.HadithNo,B.HadithBookName, DH.FromDate, DH.ToDate, DH.Id 
		FROM DefaultHadith DH 
		INNER JOIN HadithBooksName B On B.HadithBookID=Dh.BookId
	ORDER BY FromDate
End


GO
/****** Object:  StoredProcedure [dbo].[usp_GetDefaultHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_GetDefaultHadith]
AS
BEGIN
	DECLARE @DATE date=GETDATE()
	SELECT DH.Id, DH.HadithNo, Dh.BookId,B.HadithBookName, DH.ToDate, DH.FromDate
	FROM DefaultHadith DH 
		INNER JOIN HadithBooksName B On B.HadithBookID=Dh.BookId
	WHERE @DATE BETWEEN DH.ToDate AND DH.FromDate
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetDefaultHadithFD]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetDefaultHadithFD]
AS
BEGIN
DECLARE @DATE date=GETDATE()
SELECT  fd.*, dh.Id, dh.BookId, dh.HadithNo, dh.FromDate, dh.ToDate
FROM [Mohaddis].[dbo].[FlatData] AS fd
LEFT JOIN [Mohaddis].[dbo].[DefaultHadith] AS dh ON fd.HadeesNumber = dh.BookId
WHERE @DATE BETWEEN dh.ToDate AND dh.FromDate AND fd.BookID = dh.BookId
End
GO
/****** Object:  StoredProcedure [dbo].[usp_GetDefaultTaraqeemsAndTarjum]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_GetDefaultTaraqeemsAndTarjum]

@BukhariTarqeem nvarchar(256)=NULL,
@BukhariTranslation nvarchar(256)=NULL,
@BukhariBookId nvarchar(256)=NULL,
@MuslimTarqeem nvarchar(256)=NULL,
@MuslimTranslation nvarchar(256)=NULL,
@MuslimBookId nvarchar(256)=NULL,
@DaudTarqeem nvarchar(256)=NULL,
@DaudTranslation nvarchar(256)=NULL,
@DaudBookId nvarchar(256)=NULL,
@TrimziTarqeem nvarchar(256)=NULL,
@TrimziTranslation nvarchar(256)=NULL,
@TrimziBookId nvarchar(256)=NULL,
@NisaiTarqeem nvarchar(256)=NULL,
@NisaiTranslation nvarchar(256)=NULL, 
@NisaiBookId nvarchar(256)=NULL,
@MajahTarqeem nvarchar(256)=NULL,
@MajahTranslation nvarchar(256)=NULL, 
@MajahBookId nvarchar(256)=NULL,
@Command nvarchar(256)=NULL
AS
BEGIN
--Truncate Table DefaultTarqeemAndTarjumah
	IF @Command='Select'
		BEGIN
			SELECT Id, BookId, DefaultTarqeem, DefaultTarjumah FROM DefaultTarqeemAndTarjumah
		END
	IF @Command='Insert'
		BEGIN
			IF EXISTS(SELECT 1 FROM DefaultTarqeemAndTarjumah WHERE BookId=@BukhariBookId)
				BEGIN
					UPDATE DefaultTarqeemAndTarjumah SET DefaultTarqeem=@BukhariTarqeem, DefaultTarjumah=@BukhariTranslation WHERE BookId=@BukhariBookId
				END
			ELSE
				BEGIN
					INSERT INTO DefaultTarqeemAndTarjumah(BookId, DefaultTarqeem, DefaultTarjumah)
						VALUES(@BukhariBookId, @BukhariTarqeem, @BukhariTranslation)
				END

			IF EXISTS(SELECT 1 FROM DefaultTarqeemAndTarjumah WHERE BookId=@MuslimBookId)
				BEGIN
					UPDATE DefaultTarqeemAndTarjumah SET DefaultTarqeem=@MuslimTarqeem, DefaultTarjumah=@MuslimTranslation WHERE BookId=@MuslimBookId
				END
			ELSE
				BEGIN
					INSERT INTO DefaultTarqeemAndTarjumah(BookId, DefaultTarqeem, DefaultTarjumah)
						VALUES(@MuslimBookId, @MuslimTarqeem, @MuslimTranslation)
				END

			IF EXISTS(SELECT 1 FROM DefaultTarqeemAndTarjumah WHERE BookId=@DaudBookId)
				BEGIN
					UPDATE DefaultTarqeemAndTarjumah SET DefaultTarqeem=@DaudTarqeem, DefaultTarjumah=@DaudTranslation WHERE BookId=@DaudBookId
				END
			ELSE
				BEGIN
					INSERT INTO DefaultTarqeemAndTarjumah(BookId, DefaultTarqeem, DefaultTarjumah)
						VALUES(@DaudBookId, @DaudTarqeem, @DaudTranslation)
				END

			IF EXISTS(SELECT 1 FROM DefaultTarqeemAndTarjumah WHERE BookId=@TrimziBookId)
				BEGIN
					UPDATE DefaultTarqeemAndTarjumah SET DefaultTarqeem=@TrimziTarqeem, DefaultTarjumah=@TrimziTranslation WHERE BookId=@TrimziBookId
				END
			ELSE
				BEGIN
					INSERT INTO DefaultTarqeemAndTarjumah(BookId, DefaultTarqeem, DefaultTarjumah)
						VALUES(@TrimziBookId, @TrimziTarqeem, @TrimziTranslation)
				END

			IF EXISTS(SELECT 1 FROM DefaultTarqeemAndTarjumah WHERE BookId=@NisaiBookId)
				BEGIN
					UPDATE DefaultTarqeemAndTarjumah SET DefaultTarqeem=@NisaiTarqeem, DefaultTarjumah=@NisaiTranslation WHERE BookId=@NisaiBookId
				END
			ELSE
				BEGIN
					INSERT INTO DefaultTarqeemAndTarjumah(BookId, DefaultTarqeem, DefaultTarjumah)
						VALUES(@NisaiBookId, @NisaiTarqeem, @NisaiTranslation)
				END

			IF EXISTS(SELECT 1 FROM DefaultTarqeemAndTarjumah WHERE BookId=@MajahBookId)
				BEGIN
					UPDATE DefaultTarqeemAndTarjumah SET DefaultTarqeem=@MajahTarqeem, DefaultTarjumah=@MajahTranslation WHERE BookId=@MajahBookId
				END
			ELSE
				BEGIN
					INSERT INTO DefaultTarqeemAndTarjumah(BookId, DefaultTarqeem, DefaultTarjumah)
						VALUES(@MajahBookId, @MajahTarqeem, @MajahTranslation)
				END
		END
End

GO
/****** Object:  StoredProcedure [dbo].[usp_GetNewTarqeemSelectedHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetNewTarqeemSelectedHadith]
@BookId int,
@DefaulTarqeem nvarchar(256),
@OldTarqeem nvarchar(256),
@OldHadithNo float
As
Begin
SELECT 
(CASE WHEN (@DefaulTarqeem='HadeesNumber')  THEN HadeesNumber
	WHEN (@DefaulTarqeem='HadeesNumberTOne') THEN H.HadeesNumberTOne
	WHEN (@DefaulTarqeem='HadeesNumberTTwo') THEN H.HadeesNumberTTwo
	WHEN (@DefaulTarqeem='HadeesNumberTThree') THEN H.HadeesNumberTThree
	WHEN (@DefaulTarqeem='HadeesNumberTFour') THEN H.HadeesNumberTFour
	WHEN (@DefaulTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
	WHEN (@DefaulTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
	WHEN (@DefaulTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
	WHEN (@DefaulTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
	WHEN (@DefaulTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
		ELSE HadeesNumberTTen END) AS HadeesNumber
FROM  HadithBooksName B 
INNER JOIN Kutab K ON B.HadithBookID = K.BookID And B.HadithBookID = @BookId
INNER JOIN Abwaab A ON K.IDPK = A.KitaabID
INNER JOIN Ahadith H ON A.IDPK = H.BaabID

WHERE ISNULL((CASE WHEN (@OldTarqeem='HadeesNumber') THEN HadeesNumber
	WHEN (@OldTarqeem='HadeesNumberTOne') THEN H.HadeesNumberTOne
	WHEN (@OldTarqeem='HadeesNumberTTwo') THEN H.HadeesNumberTTwo
	WHEN (@OldTarqeem='HadeesNumberTThree') THEN H.HadeesNumberTThree
	WHEN (@OldTarqeem='HadeesNumberTFour') THEN H.HadeesNumberTFour
	WHEN (@OldTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
	WHEN (@OldTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
	WHEN (@OldTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
	WHEN (@OldTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
	WHEN (@OldTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
		ELSE HadeesNumberTTen END),0) = @OldHadithNo
order by hadeesnumber

End
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTazkirahToDayData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetTazkirahToDayData]
AS
BEGIN
	
	DECLARE @DATE date=GETDATE()
	SELECT TOP(1) TD.Id, TD.Text, TD.ToDate, TD.FromDate
	FROM TazkirahToDayData TD 
	WHERE @DATE BETWEEN TD.ToDate AND TD.FromDate

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetTopicsByHadithNumber]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetTopicsByHadithNumber]

@HadithNumber float,
@DefaulTarqeem nvarchar(256)='HadeesNumber',
@HadithBookID INT

AS

SELECT ROW_NUMBER() OVER(ORDER BY ID) AS RowNo ,* FROM
(SELECT HTA.ID, HTA.MozuID, CONVERT(DECIMAL(18,2),HTA.HadithNumber) AS HadithNumber, HTA.HadithBookID, HT.TopicUrdu As TopParentUrduTopic,HT.TopicsEng As TopParentEngTopic,
 HT.TopicArabic AS TopParentArabictopic, HTS.TopicArabic , HTS.TopicUrdu , HTS.TopicsEng

FROM HadithTopicsToAhadith HTA
LEFT JOIN FlatData FD ON FD.HadithBookID=HTA.HadithBookID AND 
	(CASE WHEN (@DefaulTarqeem='HadeesNumber') THEN HadeesNumber
		WHEN (@DefaulTarqeem='HadeesNumberTOne') THEN HadeesNumberTOne
		WHEN (@DefaulTarqeem='HadeesNumberTTwo') THEN HadeesNumberTTwo
		WHEN (@DefaulTarqeem='HadeesNumberTThree') THEN HadeesNumberTThree
		WHEN (@DefaulTarqeem='HadeesNumberTFour') THEN HadeesNumberTFour
		WHEN (@DefaulTarqeem='HadeesNumberTFive') THEN HadeesNumberTFive
		WHEN (@DefaulTarqeem='HadeesNumberTSix') THEN HadeesNumberTSix
		WHEN (@DefaulTarqeem='HadeesNumberTSeven') THEN HadeesNumberTSeven
		WHEN (@DefaulTarqeem='HadeesNumberTEight') THEN HadeesNumberTEight
		WHEN (@DefaulTarqeem='HadeesNumberTNine') THEN HadeesNumberTNine
			ELSE HadeesNumberTTen END) =@HadithNumber
INNER JOIN HadithTopics HT ON HT.IDPK IN (SELECT MozuID FROM flatTopics WHERE ChildID = HTA.MozuID) AND HT.ParentID = 1
INNER JOIN HadithTopics HTS ON HTS.IDPK = HTA.MozuID


WHERE HTA.HadithNumber = FD.HadeesNumber
AND HTA.HadithBookID = @HadithBookID
)data
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadAllTopicsforTREE]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_LoadAllTopicsforTREE]
AS
BEGIN
	SELECT IDPK, ParentID, SeqID, TopicUrdu,TopicArabic, [Level], TopicsEng
	FROM hadithtopics
END
GO
/****** Object:  StoredProcedure [dbo].[usp_loadBooks]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_loadBooks]
as
Begin
	SELECT HadithBookID, HadithBookName, HadithBookNameUrdu, HadithBookNameEng 
	FROM HadithBooksName --WHERE HadithBookID<7
End
GO
/****** Object:  StoredProcedure [dbo].[usp_loadBooksConfig]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_loadBooksConfig]
	-- Add the parameters for the stored procedure here
	@BookId bigint=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Id] ,[Type] ,[SrNo] ,[TarNo] ,[UrduSrNo] ,[BookName] ,[BookID] ,[Value] ,[Name] ,[HashiyaValue] ,[UrduName] ,[Ikhtisar]
	FROM [dbo].[tblBooksConfig]
	WHERE BookId=ISNULL(@BookId, BookId)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadHadithDataByHadithNo]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE proc [dbo].[usp_LoadHadithDataByHadithNo]
@Book_Id int,
@Hadith_No float,
@DefaulTarqeem  nvarchar(256),
@DefaultTranslation nvarchar(256),
@DefaultHashiya nvarchar(256),
@DefaultHukam nvarchar(256)
As
Begin
 SELECT 
	    (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
		WHEN ISNULL(DT.Id,0)>0 THEN 
		(SELECT (CASE WHEN DT.DefaultTarqeem='HadeesNumber' THEN HadeesNumber 
			WHEN DT.DefaultTarqeem='HadeesNumberTOne' THEN HadeesNumberTOne 
			WHEN DT.DefaultTarqeem='HadeesNumberTTwo' THEN HadeesNumberTTwo 
			WHEN DT.DefaultTarqeem='HadeesNumberTThree' THEN HadeesNumberTThree
			WHEN DT.DefaultTarqeem='HadeesNumberTFour' THEN HadeesNumberTFour
			WHEN DT.DefaultTarqeem='HadeesNumberTFive' THEN HadeesNumberTFive

			WHEN DT.DefaultTarqeem='HadeesNumberTSix' THEN HadeesNumberTSix
			WHEN DT.DefaultTarqeem='HadeesNumberTSeven' THEN HadeesNumberTSeven
			WHEN DT.DefaultTarqeem='HadeesNumberTEight' THEN HadeesNumberTEight
			WHEN DT.DefaultTarqeem='HadeesNumberTNine' THEN HadeesNumberTNine
			WHEN DT.DefaultTarqeem='HadeesNumberTTen' THEN HadeesNumberTTen
		END) AS HadeesNumber
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTOne
		WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTTwo
		WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTThree
		WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFour

		WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
		WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
		WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
		WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
		WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
			ELSE HadeesNumberTTen END) AS HadeesNumber, HadeesNumber AS HadeesNumberZero,
		HadeesNumberTOne,HadeesNumberTTwo,HadeesNumberTThree,HadeesNumberTFour,HadeesNumberTFive,
		HadeesNumberTSix, HadeesNumberTSeven, HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen
		 BaabID, HadithArabicText,HadithBookName,HadithBookNameUrdu, HadithBookNameEng, BaabNameArabic, BaabNameEng,BaabNameUrdu,
		TarjumatulBaabArabic, 
		
		(CASE WHEN (@DefaultTranslation='HadithUrduText') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrdu
		WHEN ISNULL(TDT.Id,0)>0 THEN 
		(SELECT (CASE WHEN TDT.DefaultTarjumah='HadithUrduText' THEN TarjumatulBaabUrdu 
			WHEN TDT.DefaultTarjumah='HadithUrduTextOne' THEN TarjumatulBaabUrduOne 
			WHEN TDT.DefaultTarjumah='HadithUrduTextTwo' THEN TarjumatulBaabUrduTwo 
			WHEN TDT.DefaultTarjumah='HadithUrduTextThree' THEN TarjumatulBaabUrduThree
			WHEN TDT.DefaultTarjumah='HadithUrduTextFour' THEN TarjumatulBaabUrduFour
			WHEN TDT.DefaultTarjumah='HadithUrduTextFive' THEN TarjumatulBaabUrduFive

			WHEN TDT.DefaultTarjumah='HadithUrduTextSix' THEN TarjumatulBaabUrduSix
			WHEN TDT.DefaultTarjumah='HadithUrduTextSeven' THEN TarjumatulBaabUrduSeven
			WHEN TDT.DefaultTarjumah='HadithUrduTextEight' THEN TarjumatulBaabUrduEight
			WHEN TDT.DefaultTarjumah='HadithUrduTextNine' THEN TarjumatulBaabUrduNine
			WHEN TDT.DefaultTarjumah='HadithUrduTextTen' THEN TarjumatulBaabUrduTen

		END) AS DefaultTarjumah
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaultTranslation='HadithUrduTextOne') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduOne
		WHEN (@DefaultTranslation='HadithUrduTextTwo') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduTwo
		WHEN (@DefaultTranslation='HadithUrduTextThree') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduThree
		WHEN (@DefaultTranslation='HadithUrduTextFour') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduFour
		WHEN (@DefaultTranslation='HadithUrduTextFive') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduFive
		 
		WHEN (@DefaultTranslation='HadithUrduTextSix') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduSix 	
		WHEN (@DefaultTranslation='HadithUrduTextSeven') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduSeven 	
		WHEN (@DefaultTranslation='HadithUrduTextEight') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduEight
		WHEN (@DefaultTranslation='HadithUrduTextNine') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduNine
		WHEN (@DefaultTranslation='HadithUrduTextTen') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduTen
			END) AS TarjumatulBaabUrdu,TarjumatulBaabUrdu AS TarjumatulBaabUrduZero, TarjumatulBaabUrduOne,
		TarjumatulBaabUrduTwo,TarjumatulBaabUrduThree,TarjumatulBaabUrduFour,TarjumatulBaabUrduFive,TarjumatulBaabUrduSix,
		TarjumatulBaabUrduSeven,TarjumatulBaabUrduEight,TarjumatulBaabUrduNine,TarjumatulBaabUrduTen,

	    (CASE WHEN (@DefaultTranslation='HadithUrduText') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduText
		WHEN ISNULL(TDT.Id,0)>0 THEN 
		(SELECT (CASE WHEN TDT.DefaultTarjumah='HadithUrduText' THEN HadithUrduText 
			WHEN TDT.DefaultTarjumah='HadithUrduTextOne' THEN HadithUrduTextOne 
			WHEN TDT.DefaultTarjumah='HadithUrduTextTwo' THEN HadithUrduTextTwo 
			WHEN TDT.DefaultTarjumah='HadithUrduTextThree' THEN HadithUrduTextThree
			WHEN TDT.DefaultTarjumah='HadithUrduTextFour' THEN HadithUrduTextFour
			WHEN TDT.DefaultTarjumah='HadithUrduTextFive' THEN HadithUrduTextFive

			WHEN TDT.DefaultTarjumah='HadithUrduTextSix' THEN HadithUrduTextSix
			WHEN TDT.DefaultTarjumah='HadithUrduTextSeven' THEN HadithUrduTextSeven
			WHEN TDT.DefaultTarjumah='HadithUrduTextEight' THEN HadithUrduTextEight
			WHEN TDT.DefaultTarjumah='HadithUrduTextNine' THEN HadithUrduTextNine
			WHEN TDT.DefaultTarjumah='HadithUrduTextTen' THEN HadithUrduTextTen

		END) AS DefaultTarjumah
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaultTranslation='HadithUrduTextOne') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextOne
		WHEN (@DefaultTranslation='HadithUrduTextTwo') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextTwo
		WHEN (@DefaultTranslation='HadithUrduTextThree') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextThree
		WHEN (@DefaultTranslation='HadithUrduTextFour') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextFour
		WHEN (@DefaultTranslation='HadithUrduTextFive') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextFive
		 
		WHEN (@DefaultTranslation='HadithUrduTextSix') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextSix 	
		WHEN (@DefaultTranslation='HadithUrduTextSeven') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextSeven 	
		WHEN (@DefaultTranslation='HadithUrduTextEight') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextEight
		WHEN (@DefaultTranslation='HadithUrduTextNine') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextNine
		WHEN (@DefaultTranslation='HadithUrduTextTen') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextTen
			END) AS HadithUrduText, HadithUrduText AS HadithUrduTextZero,
		HadithUrduTextOne,HadithUrduTextTwo,HadithUrduTextThree,HadithUrduTextFour,HadithUrduTextFive,
		HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
		(CASE WHEN (@DefaultHashiya='HadithHashiaText') THEN HadithHashiaText
		WHEN (@DefaultHashiya='HadithHashiaTextOne') THEN HadithHashiaTextOne
		WHEN (@DefaultHashiya='HadithHashiaTextTwo') THEN HadithHashiaTextTwo
		WHEN (@DefaultHashiya='HadithHashiaTextThree') THEN HadithHashiaTextThree
		WHEN (@DefaultHashiya='HadithHashiaTextFour') THEN HadithHashiaTextFour

		WHEN (@DefaultHashiya='HadithHashiaTextFive') THEN HadithHashiaTextFive
		WHEN (@DefaultHashiya='HadithHashiaTextSix') THEN HadithHashiaTextSix
		WHEN (@DefaultHashiya='HadithHashiaTextSeven') THEN HadithHashiaTextSeven
		WHEN (@DefaultHashiya='HadithHashiaTextEight') THEN HadithHashiaTextEight
		WHEN (@DefaultHashiya='HadithHashiaTextNine') THEN HadithHashiaTextNine
		WHEN (@DefaultHashiya='HadithHashiaTextTen') THEN HadithHashiaTextTen END) AS HadithHashiaText,
		HadithHashiaTextOne,HadithHashiaTextTwo, HadithHashiaTextThree, HadithHashiaTextFour, HadithHashiaTextFive, 
		HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
		HadithTypeAtraaf, KitaabNameARabic, KitaabNameEng,HadithTypeRawaat, HadithTypeQFT, 
		
		(CASE WHEN (@DefaultHukam='HadithHukamAjmali') THEN HadithHukamAjmali
		WHEN (@DefaultHukam='HadithHukamAjmaliOne') THEN HadithHukamAjmaliOne
		WHEN (@DefaultHukam='HadithHukamAjmaliTwo') THEN HadithHukamAjmaliTwo
		WHEN (@DefaultHukam='HadithHukamAjmaliThree') THEN HadithHukamAjmaliThree
		WHEN (@DefaultHukam='HadithHukamAjmaliFour') THEN HadithHukamAjmaliFour

		WHEN (@DefaultHukam='HadithHukamAjmaliFive') THEN HadithHukamAjmaliFive
		WHEN (@DefaultHukam='HadithHukamAjmaliSix') THEN HadithHukamAjmaliSix
		WHEN (@DefaultHukam='HadithHukamAjmaliSeven') THEN HadithHukamAjmaliSeven
		WHEN (@DefaultHukam='HadithHukamAjmaliEight') THEN HadithHukamAjmaliEight
		WHEN (@DefaultHukam='HadithHukamAjmaliNine') THEN HadithHukamAjmaliNine
		WHEN (@DefaultHukam='HadithHukamAjmaliTen') THEN HadithHukamAjmaliTen END) AS HadithHukamAjmali,
		HadithHukamAjmaliOne,HadithHukamAjmaliTwo, HadithHukamAjmaliThree, HadithHukamAjmaliFour, HadithHukamAjmaliFive, 
		HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
		KitaabNameUrdu, HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,
		HadithHukamTafseeliArabic, KitaabTamheedArabic, KitaabTamheedUrdu, AbwaabTamheedArabic, AbwaabTamheedUrdu, 1 AS TotalCount 
	From FlatData Fd
		LEFT JOIN DefaultTarqeemAndTarjumah DT ON DT.BookId=@Book_Id AND  DT.DefaultTarqeem = @DefaulTarqeem --@DefaulTarqeem='HadeesNumber'
		LEFT JOIN DefaultTarqeemAndTarjumah TDT ON TDT.BookId=@Book_Id AND TDT.DefaultTarjumah=@DefaultTranslation --@DefaultTranslation='HadithUrduText'
	 Where Fd.HadithBookID=@Book_Id And 
	  (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
		WHEN ISNULL(DT.Id,0)>0 THEN 
		(SELECT (CASE WHEN DT.DefaultTarqeem='HadeesNumber' THEN HadeesNumber 
			WHEN DT.DefaultTarqeem='HadeesNumberTOne' THEN HadeesNumberTOne 
			WHEN DT.DefaultTarqeem='HadeesNumberTTwo' THEN HadeesNumberTTwo 
			WHEN DT.DefaultTarqeem='HadeesNumberTThree' THEN HadeesNumberTThree
			WHEN DT.DefaultTarqeem='HadeesNumberTFour' THEN HadeesNumberTFour
			WHEN DT.DefaultTarqeem='HadeesNumberTFive' THEN HadeesNumberTFive

			WHEN DT.DefaultTarqeem='HadeesNumberTSix' THEN HadeesNumberTSix
			WHEN DT.DefaultTarqeem='HadeesNumberTSeven' THEN HadeesNumberTSeven
			WHEN DT.DefaultTarqeem='HadeesNumberTEight' THEN HadeesNumberTEight
			WHEN DT.DefaultTarqeem='HadeesNumberTNine' THEN HadeesNumberTNine
			WHEN DT.DefaultTarqeem='HadeesNumberTTen' THEN HadeesNumberTTen
		END) AS HadeesNumber
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTOne
		WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTTwo
		WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTThree
		WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFour

		WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
		WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
		WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
		WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
		WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
			ELSE HadeesNumberTTen END) = @Hadith_No
End

GO
/****** Object:  StoredProcedure [dbo].[usp_LoadHadithDataByHadithNo_New]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_LoadHadithDataByHadithNo_New]
@Book_Id int,
@Hadith_No int
As
Begin
 SELECT 
  HadeesNumber, HadithArabicText,HadithBookName,HadithBookNameUrdu, BaabNameArabic,BaabNameUrdu,
  TarjumatulBaabArabic, TarjumatulBaabUrdu,HadithUrduText, HadithHashiaText, HadithTypeAtraaf,
  KitaabNameARabic,HadithTypeRawaat, HadithTypeQFT, HadithHukamAjmali, KitaabNameUrdu,
  HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,
  HadithHukamTafseeliArabic From FlatData Fd

 Where Fd.HadithBookID=@Book_Id And HadeesNumber= @Hadith_No
End
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadHadithDataByHadithNoNewTBG]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE proc [dbo].[usp_LoadHadithDataByHadithNoNewTBG]
@Book_Id int,
@Hadith_No float,
@DefaulTarqeem  nvarchar(256),
@DefaultTranslation nvarchar(256),
@DefaultHashiya nvarchar(256),
@DefaultHukam nvarchar(256)
As
Begin
 SELECT 
	    (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
		WHEN ISNULL(DT.Id,0)>0 THEN 
		(SELECT (CASE WHEN DT.Value='HadeesNumber' THEN HadeesNumber 
			WHEN DT.Value='HadeesNumberTOne' THEN HadeesNumberTOne 
			WHEN DT.Value='HadeesNumberTTwo' THEN HadeesNumberTTwo 
			WHEN DT.Value='HadeesNumberTThree' THEN HadeesNumberTThree
			WHEN DT.Value='HadeesNumberTFour' THEN HadeesNumberTFour
			WHEN DT.Value='HadeesNumberTFive' THEN HadeesNumberTFive

			WHEN DT.Value='HadeesNumberTSix' THEN HadeesNumberTSix
			WHEN DT.Value='HadeesNumberTSeven' THEN HadeesNumberTSeven
			WHEN DT.Value='HadeesNumberTEight' THEN HadeesNumberTEight
			WHEN DT.Value='HadeesNumberTNine' THEN HadeesNumberTNine
			WHEN DT.Value='HadeesNumberTTen' THEN HadeesNumberTTen
		END) AS HadeesNumber
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTOne
		WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTTwo
		WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTThree
		WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFour

		WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
		WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
		WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
		WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
		WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
			ELSE HadeesNumberTTen END) AS HadeesNumber, HadeesNumber AS HadeesNumberZero,
		HadeesNumberTOne,HadeesNumberTTwo,HadeesNumberTThree,HadeesNumberTFour,HadeesNumberTFive,
		HadeesNumberTSix, HadeesNumberTSeven, HadeesNumberTEight, HadeesNumberTNine, HadeesNumberTTen
		 BaabID, HadithArabicText,HadithBookName,HadithBookNameUrdu, HadithBookNameEng, BaabNameArabic, BaabNameEng,BaabNameUrdu,
		TarjumatulBaabArabic, 
		
		(CASE WHEN (@DefaultTranslation='HadithUrduText') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrdu
		WHEN ISNULL(TDT.Id,0)>0 THEN 
		(SELECT (CASE WHEN TDT.Value='HadithUrduText' THEN TarjumatulBaabUrdu 
			WHEN TDT.Value='HadithUrduTextOne' THEN TarjumatulBaabUrduOne 
			WHEN TDT.Value='HadithUrduTextTwo' THEN TarjumatulBaabUrduTwo 
			WHEN TDT.Value='HadithUrduTextThree' THEN TarjumatulBaabUrduThree
			WHEN TDT.Value='HadithUrduTextFour' THEN TarjumatulBaabUrduFour
			WHEN TDT.Value='HadithUrduTextFive' THEN TarjumatulBaabUrduFive

			WHEN TDT.Value='HadithUrduTextSix' THEN TarjumatulBaabUrduSix
			WHEN TDT.Value='HadithUrduTextSeven' THEN TarjumatulBaabUrduSeven
			WHEN TDT.Value='HadithUrduTextEight' THEN TarjumatulBaabUrduEight
			WHEN TDT.Value='HadithUrduTextNine' THEN TarjumatulBaabUrduNine
			WHEN TDT.Value='HadithUrduTextTen' THEN TarjumatulBaabUrduTen

		END) AS DefaultTarjumah
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaultTranslation='HadithUrduTextOne') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduOne
		WHEN (@DefaultTranslation='HadithUrduTextTwo') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduTwo
		WHEN (@DefaultTranslation='HadithUrduTextThree') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduThree
		WHEN (@DefaultTranslation='HadithUrduTextFour') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduFour
		WHEN (@DefaultTranslation='HadithUrduTextFive') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduFive
		 
		WHEN (@DefaultTranslation='HadithUrduTextSix') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduSix 	
		WHEN (@DefaultTranslation='HadithUrduTextSeven') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduSeven 	
		WHEN (@DefaultTranslation='HadithUrduTextEight') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduEight
		WHEN (@DefaultTranslation='HadithUrduTextNine') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduNine
		WHEN (@DefaultTranslation='HadithUrduTextTen') AND ISNULL(TDT.Id,0)=0 THEN TarjumatulBaabUrduTen
			END) AS TarjumatulBaabUrdu,TarjumatulBaabUrdu AS TarjumatulBaabUrduZero, TarjumatulBaabUrduOne,
		TarjumatulBaabUrduTwo,TarjumatulBaabUrduThree,TarjumatulBaabUrduFour,TarjumatulBaabUrduFive,TarjumatulBaabUrduSix,
		TarjumatulBaabUrduSeven,TarjumatulBaabUrduEight,TarjumatulBaabUrduNine,TarjumatulBaabUrduTen,

	    (CASE WHEN (@DefaultTranslation='HadithUrduText') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduText
		WHEN ISNULL(TDT.Id,0)>0 THEN 
		(SELECT (CASE WHEN TDT.Value='HadithUrduText' THEN HadithUrduText 
			WHEN TDT.Value='HadithUrduTextOne' THEN HadithUrduTextOne 
			WHEN TDT.Value='HadithUrduTextTwo' THEN HadithUrduTextTwo 
			WHEN TDT.Value='HadithUrduTextThree' THEN HadithUrduTextThree
			WHEN TDT.Value='HadithUrduTextFour' THEN HadithUrduTextFour
			WHEN TDT.Value='HadithUrduTextFive' THEN HadithUrduTextFive

			WHEN TDT.Value='HadithUrduTextSix' THEN HadithUrduTextSix
			WHEN TDT.Value='HadithUrduTextSeven' THEN HadithUrduTextSeven
			WHEN TDT.Value='HadithUrduTextEight' THEN HadithUrduTextEight
			WHEN TDT.Value='HadithUrduTextNine' THEN HadithUrduTextNine
			WHEN TDT.Value='HadithUrduTextTen' THEN HadithUrduTextTen

		END) AS DefaultTarjumah
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaultTranslation='HadithUrduTextOne') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextOne
		WHEN (@DefaultTranslation='HadithUrduTextTwo') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextTwo
		WHEN (@DefaultTranslation='HadithUrduTextThree') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextThree
		WHEN (@DefaultTranslation='HadithUrduTextFour') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextFour
		WHEN (@DefaultTranslation='HadithUrduTextFive') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextFive
		 
		WHEN (@DefaultTranslation='HadithUrduTextSix') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextSix 	
		WHEN (@DefaultTranslation='HadithUrduTextSeven') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextSeven 	
		WHEN (@DefaultTranslation='HadithUrduTextEight') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextEight
		WHEN (@DefaultTranslation='HadithUrduTextNine') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextNine
		WHEN (@DefaultTranslation='HadithUrduTextTen') AND ISNULL(TDT.Id,0)=0 THEN HadithUrduTextTen
			END) AS HadithUrduText, HadithUrduText AS HadithUrduTextZero,
		HadithUrduTextOne,HadithUrduTextTwo,HadithUrduTextThree,HadithUrduTextFour,HadithUrduTextFive,
		HadithUrduTextSix, HadithUrduTextSeven, HadithUrduTextEight, HadithUrduTextNine, HadithUrduTextTen,
		(CASE WHEN (@DefaultHashiya='HadithHashiaText') THEN HadithHashiaText
		WHEN (@DefaultHashiya='HadithHashiaTextOne') THEN HadithHashiaTextOne
		WHEN (@DefaultHashiya='HadithHashiaTextTwo') THEN HadithHashiaTextTwo
		WHEN (@DefaultHashiya='HadithHashiaTextThree') THEN HadithHashiaTextThree
		WHEN (@DefaultHashiya='HadithHashiaTextFour') THEN HadithHashiaTextFour

		WHEN (@DefaultHashiya='HadithHashiaTextFive') THEN HadithHashiaTextFive
		WHEN (@DefaultHashiya='HadithHashiaTextSix') THEN HadithHashiaTextSix
		WHEN (@DefaultHashiya='HadithHashiaTextSeven') THEN HadithHashiaTextSeven
		WHEN (@DefaultHashiya='HadithHashiaTextEight') THEN HadithHashiaTextEight
		WHEN (@DefaultHashiya='HadithHashiaTextNine') THEN HadithHashiaTextNine
		WHEN (@DefaultHashiya='HadithHashiaTextTen') THEN HadithHashiaTextTen END) AS HadithHashiaText,
		HadithHashiaTextOne,HadithHashiaTextTwo, HadithHashiaTextThree, HadithHashiaTextFour, HadithHashiaTextFive, 
		HadithHashiaTextSix, HadithHashiaTextSeven, HadithHashiaTextEight, HadithHashiaTextNine, HadithHashiaTextTen,
		HadithTypeAtraaf, KitaabNameARabic, KitaabNameEng,HadithTypeRawaat, HadithTypeQFT, 
		
		(CASE WHEN (@DefaultHukam='HadithHukamAjmali') THEN HadithHukamAjmali
		WHEN (@DefaultHukam='HadithHukamAjmaliOne') THEN HadithHukamAjmaliOne
		WHEN (@DefaultHukam='HadithHukamAjmaliTwo') THEN HadithHukamAjmaliTwo
		WHEN (@DefaultHukam='HadithHukamAjmaliThree') THEN HadithHukamAjmaliThree
		WHEN (@DefaultHukam='HadithHukamAjmaliFour') THEN HadithHukamAjmaliFour

		WHEN (@DefaultHukam='HadithHukamAjmaliFive') THEN HadithHukamAjmaliFive
		WHEN (@DefaultHukam='HadithHukamAjmaliSix') THEN HadithHukamAjmaliSix
		WHEN (@DefaultHukam='HadithHukamAjmaliSeven') THEN HadithHukamAjmaliSeven
		WHEN (@DefaultHukam='HadithHukamAjmaliEight') THEN HadithHukamAjmaliEight
		WHEN (@DefaultHukam='HadithHukamAjmaliNine') THEN HadithHukamAjmaliNine
		WHEN (@DefaultHukam='HadithHukamAjmaliTen') THEN HadithHukamAjmaliTen END) AS HadithHukamAjmali,
		HadithHukamAjmaliOne,HadithHukamAjmaliTwo, HadithHukamAjmaliThree, HadithHukamAjmaliFour, HadithHukamAjmaliFive, 
		HadithHukamAjmaliSix, HadithHukamAjmaliSeven, HadithHukamAjmaliEight, HadithHukamAjmaliNine, HadithHukamAjmaliTen,
		KitaabNameUrdu, HadithHukamTafseeli, HadithMouzuhArabic, HadithMouzuhUrdu,
		HadithHukamTafseeliArabic, KitaabTamheedArabic, KitaabTamheedUrdu, AbwaabTamheedArabic, AbwaabTamheedUrdu, DT.Name, DT.UrduName, DT.TarNo, DT.BookID, 1 AS TotalCount 
	From FlatData Fd
		LEFT JOIN tblBooksConfig DT ON DT.BookId=@Book_Id AND  DT.Value = @DefaulTarqeem --@DefaulTarqeem='HadeesNumber'
		LEFT JOIN tblBooksConfig TDT ON TDT.BookId=@Book_Id AND TDT.Value=@DefaultTranslation --@DefaultTranslation='HadithUrduText'
	 Where Fd.HadithBookID=@Book_Id And 
	  (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
		WHEN ISNULL(DT.Id,0)>0 THEN 
		(SELECT (CASE WHEN DT.Value='HadeesNumber' THEN HadeesNumber 
			WHEN DT.Value='HadeesNumberTOne' THEN HadeesNumberTOne 
			WHEN DT.Value='HadeesNumberTTwo' THEN HadeesNumberTTwo 
			WHEN DT.Value='HadeesNumberTThree' THEN HadeesNumberTThree
			WHEN DT.Value='HadeesNumberTFour' THEN HadeesNumberTFour
			WHEN DT.Value='HadeesNumberTFive' THEN HadeesNumberTFive

			WHEN DT.Value='HadeesNumberTSix' THEN HadeesNumberTSix
			WHEN DT.Value='HadeesNumberTSeven' THEN HadeesNumberTSeven
			WHEN DT.Value='HadeesNumberTEight' THEN HadeesNumberTEight
			WHEN DT.Value='HadeesNumberTNine' THEN HadeesNumberTNine
			WHEN DT.Value='HadeesNumberTTen' THEN HadeesNumberTTen
		END) AS HadeesNumber
		FROM FlatData FDD WHERE FDD.ID=FD.ID)
		WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTOne
		WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTTwo
		WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTThree
		WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFour

		WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
		WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
		WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
		WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
		WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
			ELSE HadeesNumberTTen END) = @Hadith_No
End

--exec usp_LoadHadithDataByHadithNoNewTBG
--@Book_Id = 1,
--@Hadith_No = 2,
--@DefaulTarqeem ='HadeesNumberTOne',
--@DefaultTranslation ='HadithUrduText',
--@DefaultHukam ='HadithHukamAjmali',
--@DefaultHashiya ='HadithHashiaText';
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadHadithDataByHadithNoTBG]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LoadHadithDataByHadithNoTBG]
	@Book_Id INT,
    @Hadith_No FLOAT,
    @DefaultTarqeem NVARCHAR(256),
    @DefaultTranslation NVARCHAR(256),
    @DefaultHashiya NVARCHAR(256),
    @DefaultHukam NVARCHAR(256)
AS
BEGIN
 DECLARE @SqlQuery NVARCHAR(MAX)

    SET @SqlQuery = '
    SELECT Top 1
		 FD.HadithBookID,
		 FD.HadithBookName,
		 FD.HadithBookNameUrdu,
		 FD.IdKutab,
		 FD.HiddenIdKutab,
		 FD.IDPKkutab,
		 FD.BookID,
		 FD.kitaabNameUrdu,
		 FD.kitaabNameArabic,
		 FD.IdAbwaab,
		 FD.HiddenIdAbwaab,
		 FD.IDPKAbwaab,
		 FD.KitaabID,
		 FD.BaabNameArabic,
		 FD.BaabNameUrdu,
		 FD.TarjumatulBaabArabic,
		FD.TarjumatulBaabUrdu,
		FD.BaabID,
		FD.HadithArabicText,
		FD.HadithTypeAtraaf,
		FD.HadithTypeRawaat,
		FD.HadithTypeQFT,
		FD.HadithHukamTafseeli,
		FD.HadithMouzuhArabic,
		FD.HadithMouzuhUrdu,
		FD.HadithHukamTafseeliArabic,
		FD.TakhreejUrls,
        FD.HadeesNumber,              
        FD.HadeesNumberTOne,
        FD.HadeesNumberTTwo,
        FD.HadeesNumberTThree,
        FD.HadeesNumberTFour,
        FD.HadeesNumberTFive,
        FD.HadeesNumberTSix,
        FD.HadeesNumberTSeven,
        FD.HadeesNumberTEight,
        FD.HadeesNumberTNine,
        FD.HadeesNumberTTen,
        FD.HadithUrduText,
        FD.HadithUrduTextOne,
        FD.HadithUrduTextTwo,
        FD.HadithUrduTextThree,
        FD.HadithUrduTextFour,
        FD.HadithUrduTextFive,
        FD.HadithUrduTextSix,
        FD.HadithUrduTextSeven,
        FD.HadithUrduTextEight,
        FD.HadithUrduTextNine,
        FD.HadithUrduTextTen,
        FD.HadithHashiaText,
        FD.HadithHashiaTextOne,
        FD.HadithHashiaTextTwo,
        FD.HadithHashiaTextThree,
        FD.HadithHashiaTextFour,
        FD.HadithHashiaTextFive,
        FD.HadithHashiaTextSix,
        FD.HadithHashiaTextSeven,
        FD.HadithHashiaTextEight,
        FD.HadithHashiaTextNine,
        FD.HadithHashiaTextTen,
        FD.HadithHukamAjmali,
        FD.HadithHukamAjmaliOne,
        FD.HadithHukamAjmaliTwo,
        FD.HadithHukamAjmaliThree,
        FD.HadithHukamAjmaliFour,
        FD.HadithHukamAjmaliFive,
        FD.HadithHukamAjmaliSix,
        FD.HadithHukamAjmaliSeven,
        FD.HadithHukamAjmaliEight,
        FD.HadithHukamAjmaliNine,
        FD.HadithHukamAjmaliTen,
		FD.KitaabTamheedArabic,
        FD.KitaabTamheedUrdu,
        FD.AbwaabTamheedArabic,
        FD.AbwaabTamheedUrdu,
		FD.TarjumatulBaabUrduOne,
		FD.TarjumatulBaabUrduTwo,
		FD.TarjumatulBaabUrduThree,
		FD.TarjumatulBaabUrduFour,
		FD.TarjumatulBaabUrduFive,
		FD.TarjumatulBaabUrduSix, 	
		FD.TarjumatulBaabUrduSeven, 	
		FD.TarjumatulBaabUrduEight,
		FD.TarjumatulBaabUrduNine,
		FD.TarjumatulBaabUrduTen,
		FD.HadithBookNameEng,
        FD.KitaabNameEng,
        FD.BaabNameEng,
        BC.[Id],
        BC.[Type],
        BC.[SrNo],
        BC.[TarNo],
        BC.[UrduSrNo],
        BC.[BookName],
        BC.[BookID],
        BC.[Value],
        BC.[Name],
        BC.[HashiyaValue],
        BC.[UrduName],
        BC.[Ikhtisar]
    FROM 
        FlatData FD
    LEFT JOIN 
        tblBooksConfig BC ON FD.BookID = BC.BookID
    WHERE 
        FD.HadithBookID = @Book_Id 
        AND FD.HadeesNumber = @Hadith_No'

    -- Replace the column names in the SELECT clause with the dynamic column names based on input parameters
    IF @DefaultTarqeem IS NOT NULL
    BEGIN
        SET @SqlQuery = REPLACE(@SqlQuery, @DefaultTarqeem, @DefaultTarqeem)
    END

    IF @DefaultTranslation IS NOT NULL
    BEGIN
        SET @SqlQuery = REPLACE(@SqlQuery, @DefaultTranslation, @DefaultTranslation)
    END

    IF @DefaultHashiya IS NOT NULL
    BEGIN
        SET @SqlQuery = REPLACE(@SqlQuery, @DefaultHashiya, @DefaultHashiya)
    END

    IF @DefaultHukam IS NOT NULL
    BEGIN
        SET @SqlQuery = REPLACE(@SqlQuery,  @DefaultHukam, @DefaultHukam)
    END

    EXEC sp_executesql @SqlQuery, N'@Book_Id INT, @Hadith_No FLOAT', @Book_Id, @Hadith_No


END
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadHadithNoByBookId]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_LoadHadithNoByBookId]
@BookId int,
@DefaulTarqeem nvarchar(256)
As
Begin
SELECT distinct B.HadithBookID,H.HadeesNumber AS DefaultHadeesNumber, /*ISNULL(H.HadeesNumberTFive, H.HadeesNumber) AS HadeesNumber*/
(CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
		WHEN ISNULL(DT.Id,0)>0 THEN 
		(SELECT (CASE WHEN DT.DefaultTarqeem='HadeesNumber' THEN HadeesNumber 
			WHEN DT.DefaultTarqeem='HadeesNumberTOne' THEN H.HadeesNumberTOne
			WHEN DT.DefaultTarqeem='HadeesNumberTTwo' THEN H.HadeesNumberTTwo
			WHEN DT.DefaultTarqeem='HadeesNumberTThree' THEN H.HadeesNumberTThree
			WHEN DT.DefaultTarqeem='HadeesNumberTFour' THEN H.HadeesNumberTFour
			WHEN DT.DefaultTarqeem='HadeesNumberTFive' THEN H.HadeesNumberTFive
			WHEN DT.DefaultTarqeem='HadeesNumberTSix' THEN HadeesNumberTSix
			WHEN DT.DefaultTarqeem='HadeesNumberTSeven' THEN HadeesNumberTSeven
			WHEN DT.DefaultTarqeem='HadeesNumberTEight' THEN HadeesNumberTEight
			WHEN DT.DefaultTarqeem='HadeesNumberTNine' THEN HadeesNumberTNine
			WHEN DT.DefaultTarqeem='HadeesNumberTTen' THEN HadeesNumberTTen
		END) AS HadeesNumber
		FROM Ahadith FDD WHERE FDD.ID=H.ID)
	WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTOne
	WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTTwo
	WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTThree
	WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTFour
	WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
	WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
	WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
	WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
	WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
		ELSE HadeesNumberTTen END) AS HadeesNumber
FROM  HadithBooksName B 
INNER JOIN Kutab K ON B.HadithBookID = K.BookID And B.HadithBookID = @BookId
INNER JOIN Abwaab A ON K.IDPK = A.KitaabID
INNER JOIN Ahadith H ON A.IDPK = H.BaabID
LEFT JOIN DefaultTarqeemAndTarjumah DT ON DT.BookId=@BookId AND DT.DefaultTarqeem= @DefaulTarqeem--@DefaulTarqeem='HadeesNumber'
WHERE (CASE WHEN (@DefaulTarqeem='HadeesNumber') AND ISNULL(DT.Id,0)=0 THEN HadeesNumber
		WHEN ISNULL(DT.Id,0)>0 THEN 
		(SELECT (CASE WHEN DT.DefaultTarqeem='HadeesNumber' THEN HadeesNumber 
			WHEN DT.DefaultTarqeem='HadeesNumberTOne' THEN H.HadeesNumberTOne
			WHEN DT.DefaultTarqeem='HadeesNumberTTwo' THEN H.HadeesNumberTTwo
			WHEN DT.DefaultTarqeem='HadeesNumberTThree' THEN H.HadeesNumberTThree
			WHEN DT.DefaultTarqeem='HadeesNumberTFour' THEN H.HadeesNumberTFour
			WHEN DT.DefaultTarqeem='HadeesNumberTFive' THEN H.HadeesNumberTFive
			WHEN DT.DefaultTarqeem='HadeesNumberTSix' THEN HadeesNumberTSix
			WHEN DT.DefaultTarqeem='HadeesNumberTSeven' THEN HadeesNumberTSeven
			WHEN DT.DefaultTarqeem='HadeesNumberTEight' THEN HadeesNumberTEight
			WHEN DT.DefaultTarqeem='HadeesNumberTNine' THEN HadeesNumberTNine
			WHEN DT.DefaultTarqeem='HadeesNumberTTen' THEN HadeesNumberTTen
		END) AS HadeesNumber
		FROM Ahadith FDD WHERE FDD.ID=H.ID)
	WHEN (@DefaulTarqeem='HadeesNumberTOne') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTOne
	WHEN (@DefaulTarqeem='HadeesNumberTTwo') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTTwo
	WHEN (@DefaulTarqeem='HadeesNumberTThree') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTThree
	WHEN (@DefaulTarqeem='HadeesNumberTFour') AND ISNULL(DT.Id,0)=0 THEN H.HadeesNumberTFour
	WHEN (@DefaulTarqeem='HadeesNumberTFive') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTFive
	WHEN (@DefaulTarqeem='HadeesNumberTSix') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSix
	WHEN (@DefaulTarqeem='HadeesNumberTSeven') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTSeven
	WHEN (@DefaulTarqeem='HadeesNumberTEight') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTEight
	WHEN (@DefaulTarqeem='HadeesNumberTNine') AND ISNULL(DT.Id,0)=0 THEN HadeesNumberTNine
		ELSE HadeesNumberTTen END) IS NOT NULL
order by DefaultHadeesNumber

End

GO
/****** Object:  StoredProcedure [dbo].[usp_LoadKutabByBookId]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE proc [dbo].[usp_LoadKutabByBookId]
	@BookID int=null
AS
	BEGIN
		Select ID, HiddenID, IDPK, BookID, kitaabNameUrdu,[dbo].[RemoveASCIICharactersInRange1](kitaabNameArabic) AS kitaabNameArabic, KitaabNameEng, [dbo].[RemoveASCIICharactersInRange1](KitaabTamheedArabic) AS KitaabTamheedArabic, KitaabTamheedUrdu 
		From Kutab
		WHERE BookID = ISNULL(@BookID, BookID)
		ORDER BY Hiddenid
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_Search]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE Proc [dbo].[usp_Search]

@search nvarchar(500),
@isUrdu bit,
@isEnglish bit=0,
@isAdvanceSearch bit,
@bookList varchar(50)='0',
@pNo int=1,
@pSize int=10,
@BukhariTarqeem nvarchar(256),
@MuslimTarqeem nvarchar(256),
@DaudTarqeem nvarchar(256),
@TrimziTarqeem nvarchar(256),
@NisaiTarqeem nvarchar(256),
@MajahTarqeem nvarchar(256),
@BukhariTranslation nvarchar(256),
@MuslimTranslation nvarchar(256),
@DaudTranslation nvarchar(256),
@TrimziTranslation nvarchar(256),
@NisaiTranslation nvarchar(256),
@MajahTranslation nvarchar(256),
@TotalRecords bigint=0
As
Begin

DECLARE @IssUrdu bit
DECLARE @BookListCSV VARCHAR(100)
DECLARE @PageNo int
DECLARE @PageSize int

set @search='"'+@search+'"'


SET @BookListCSV=@bookList
SET @PageNo=@pNo
SET @PageSize=@pSize
Set @IssUrdu=@isUrdu


IF @isAdvanceSearch<>1
	BEGIN
		IF @isUrdu<>1
			Begin
				select @TotalRecords=COUNT(*)  FROM FlatData Fd
									INNER JOIN(SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,','))
									Data  ON Fd.HadithBookId = Data.HadithBookID 
								WHERE CONTAINS(HadithArabicText, @search) OR CONTAINS(kitaabNameArabic,@search) OR CONTAINS(BaabNameArabic,@search)
				SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber, [dbo].[RemoveASCIICharactersInRange1](HadithArabicText) AS HadithArabicText,HadithUrduText,
					HadithHashiaText,Id, HadithHukamAjmali, HadithBookID, @TotalRecords AS TotalRecords
					 FROM
					 (Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName, FD.HadithBookID,
						CONVERT(nvarchar(max), CASE WHEN @isEnglish=1 THEN HadithBookNameEng ELSE HadithBookNameUrdu END) AS HadithBookNameUrdu,
						kitaabNameArabic, CASE WHEN @isEnglish=1 THEN KitaabNameEng ELSE kitaabNameUrdu END AS kitaabNameUrdu, 
						CONVERT(float,(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen

							END)) AS HadeesNumber, IdAhadith AS Id,
			
						  --Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As 
						  BaabNameArabic,
						  --Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As 
						  CASE WHEN @isEnglish=1 THEN BaabNameEng ELSE BaabNameUrdu END AS BaabNameUrdu,HadithArabicText,

						  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
							
							END)AS HadithUrduText,HadithHukamAjmali,
  
						  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
					FROM FlatData Fd
						 INNER JOIN(SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,','))Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
						 WHERE CONTAINS(HadithArabicText, @search) OR CONTAINS(kitaabNameArabic,@search) OR CONTAINS(BaabNameArabic,@search)
						) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)
								SELECT @TotalRecords AS TotalRecords
			End
		ELSE
			Begin
				select @TotalRecords=COUNT(*)  FROM FlatData Fd
									INNER JOIN(SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,','))Data  ON Fd.HadithBookId = Data.HadithBookID 
									WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search)))) 
							OR CONTAINS(kitaabNameUrdu,@search) OR CONTAINS(BaabNameUrdu,@search)

				SELECT RowNo, HadithBookName, HadithBookNameUrdu, kitaabNameArabic, kitaabNameUrdu, BaabNameArabic, BaabNameUrdu, HadeesNumber, HadithArabicText, HadithUrduText, HadithHashiaText, Id, HadithHukamAjmali, HadithBookID, @TotalRecords AS TotalRecords
					 FROM
					 (
						Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName, FD.HadithBookID,
							CONVERT(nvarchar(max), CASE WHEN @isEnglish=1 THEN HadithBookNameEng ELSE HadithBookNameUrdu END) AS HadithBookNameUrdu,
							kitaabNameArabic,CASE WHEN @isEnglish=1 THEN KitaabNameEng ELSE kitaabNameUrdu END AS kitaabNameUrdu, 
						CONVERT(float,(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen 
							END)) AS HadeesNumber, IdAhadith AS Id,
			
						  --Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As 
						  BaabNameArabic,
						  --Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As 
						  CASE WHEN @isEnglish=1 THEN BaabNameEng ELSE BaabNameUrdu END AS BaabNameUrdu,HadithArabicText,
						  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
							END) AS HadithUrduText,HadithHukamAjmali,
  
						  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
							 FROM FlatData Fd
							 INNER JOIN
							(
								SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
							)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
							 WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND CONTAINS(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND CONTAINS(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND CONTAINS(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND CONTAINS(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND CONTAINS(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND CONTAINS(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND CONTAINS(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND CONTAINS(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND CONTAINS(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND CONTAINS(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND CONTAINS(HadithUrduTextTen, @search))))
							OR CONTAINS(kitaabNameUrdu,@search) OR CONTAINS(BaabNameUrdu,@search)
							) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)
								SELECT @TotalRecords AS TotalRecords	
			End
	End

 ELSE

 Begin
	 IF @isUrdu<>1
		 Begin
			select @TotalRecords=COUNT(*)  FROM FlatData Fd
						 INNER JOIN
						(
							SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
						)Data  ON Fd.HadithBookId = Data.HadithBookID 
						  WHERE FREETEXT(HadithArabicText, @search) OR FREETEXT(kitaabNameArabic,@search) OR FREETEXT(BaabNameArabic,@search)

			 SELECT RowNo, HadithBookName, HadithBookNameUrdu, kitaabNameArabic, kitaabNameUrdu, BaabNameArabic, BaabNameUrdu, HadeesNumber, HadithArabicText, HadithUrduText, HadithHashiaText,Id, HadithHukamAjmali, HadithBookID, @TotalRecords AS TotalRecords
				 FROM
				 (
					Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName, FD.HadithBookID,
						CONVERT(nvarchar(max), CASE WHEN @isEnglish=1 THEN HadithBookNameEng ELSE HadithBookNameUrdu END) AS HadithBookNameUrdu,
						kitaabNameArabic,CASE WHEN @isEnglish=1 THEN kitaabNameEng ELSE kitaabNameUrdu END AS kitaabNameUrdu, 
					CONVERT(float,(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
							END)) AS HadeesNumber, IdAhadith AS Id,
			
						  --Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As 
						  BaabNameArabic,
						  --Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As 
						  CASE WHEN @isEnglish=1 THEN BaabNameEng ELSE BaabNameUrdu END AS BaabNameUrdu,HadithArabicText,
						  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen 
							END) AS HadithUrduText,HadithHukamAjmali,
 
					  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
						 FROM FlatData Fd
						 INNER JOIN
						(
							SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
						)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
						 WHERE FREETEXT(HadithArabicText, @search) OR FREETEXT(kitaabNameArabic,@search) OR FREETEXT(BaabNameArabic,@search)
						) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)
						SELECT @TotalRecords AS TotalRecords
			   End
		 ELSE
 
		 Begin
			select @TotalRecords=COUNT(*)  FROM FlatData Fd
					 INNER JOIN
					(
						SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
					)Data  ON Fd.HadithBookId = Data.HadithBookID 
					  WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							 OR FREETEXT(kitaabNameUrdu,@search) OR FREETEXT(BaabNameUrdu,@search)

		  SELECT RowNo, HadithBookName, HadithBookNameUrdu, kitaabNameArabic, kitaabNameUrdu, BaabNameArabic, BaabNameUrdu, HadeesNumber, HadithArabicText, HadithUrduText, HadithHashiaText,Id, HadithHukamAjmali, HadithBookID, @TotalRecords AS TotalRecords
			 FROM
			 (
				Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName, FD.HadithBookID,
					CONVERT(nvarchar(max), CASE WHEN @isEnglish=1 THEN HadithBookNameEng ELSE HadithBookNameUrdu END) AS HadithBookNameUrdu,
					kitaabNameArabic,CASE WHEN @isEnglish=1 THEN kitaabNameEng ELSE kitaabNameUrdu END AS kitaabNameUrdu, 
				CONVERT(float,(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
							END)) AS HadeesNumber, IdAhadith AS Id,
			
				  --Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As 
				  BaabNameArabic,
				  --Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As 
				  CASE WHEN @isEnglish=1 THEN BaabNameEng ELSE BaabNameUrdu END AS BaabNameUrdu,HadithArabicText,
				  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
							END) AS HadithUrduText,HadithHukamAjmali,
 
				  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
					 FROM FlatData Fd
					 INNER JOIN
					(
						SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
					)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
					 WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							 OR FREETEXT(kitaabNameUrdu,@search) OR FREETEXT(BaabNameUrdu,@search)
					) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)

					SELECT @TotalRecords AS TotalRecords
		End
	End

End

GO
/****** Object:  StoredProcedure [dbo].[usp_Search_201801082141]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_Search_201801082141]

@search nvarchar(500),
@isUrdu bit,
@isAdvanceSearch bit,
@bookList varchar(50)='0',
@pNo int=1,
@pSize int=10,
@BukhariTarqeem nvarchar(256),
@MuslimTarqeem nvarchar(256),
@DaudTarqeem nvarchar(256),
@TrimziTarqeem nvarchar(256),
@NisaiTarqeem nvarchar(256),
@MajahTarqeem nvarchar(256),
@BukhariTranslation nvarchar(256),
@MuslimTranslation nvarchar(256),
@DaudTranslation nvarchar(256),
@TrimziTranslation nvarchar(256),
@NisaiTranslation nvarchar(256),
@MajahTranslation nvarchar(256)
As
Begin

DECLARE @IssUrdu bit
DECLARE @BookListCSV VARCHAR(100)
DECLARE @PageNo int
DECLARE @PageSize int

set @search='"'+@search+'"'


SET @BookListCSV=@bookList
SET @PageNo=@pNo
SET @PageSize=@pSize
Set @IssUrdu=@isUrdu


IF @isAdvanceSearch<>1
	BEGIN
		IF @isUrdu<>1
			Begin
				
				SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber, [dbo].[RemoveASCIICharactersInRange1](HadithArabicText) AS HadithArabicText,HadithUrduText,
					HadithHashiaText,Id, HadithHukamAjmali
					 FROM
					 (Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
						(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen

							END) AS HadeesNumber, IdAhadith AS Id,
			
						  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
						  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,

						  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
							
							END)AS HadithUrduText,HadithHukamAjmali,
  
						  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
					FROM FlatData Fd
						 INNER JOIN(SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,','))Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
						 WHERE CONTAINS(HadithArabicText, @search) OR CONTAINS(kitaabNameArabic,@search) OR CONTAINS(BaabNameArabic,@search)
						) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)
								select COUNT(*) TotalRecords  FROM FlatData Fd
									INNER JOIN(SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,','))
									Data  ON Fd.HadithBookId = Data.HadithBookID 
								WHERE CONTAINS(HadithArabicText, @search) OR CONTAINS(kitaabNameArabic,@search) OR CONTAINS(BaabNameArabic,@search)
			End
		ELSE
			Begin
				SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber,HadithArabicText,HadithUrduText,
					HadithHashiaText,Id, HadithHukamAjmali
					 FROM
					 (
						Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
						(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen 
							END) AS HadeesNumber, IdAhadith AS Id,
			
						  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
						  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,
						  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
							END) AS HadithUrduText,HadithHukamAjmali,
  
						  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
							 FROM FlatData Fd
							 INNER JOIN
							(
								SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
							)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
							 WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR CONTAINS(kitaabNameUrdu,@search) OR CONTAINS(BaabNameUrdu,@search)
							) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)
									select COUNT(*) TotalRecords  FROM FlatData Fd
									INNER JOIN(SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,','))Data  ON Fd.HadithBookId = Data.HadithBookID 
									WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search)))) 
							OR CONTAINS(kitaabNameUrdu,@search) OR CONTAINS(BaabNameUrdu,@search)
			End
	End

 ELSE

 Begin
	 IF @isUrdu<>1
		 Begin

			 SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber,HadithArabicText,HadithUrduText,
				HadithHashiaText,Id, HadithHukamAjmali
				 FROM
				 (
					Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
					(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
							END) AS HadeesNumber, IdAhadith AS Id,
			
					  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
					  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,
					  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen 
							END) AS HadithUrduText,HadithHukamAjmali,
 
					  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
						 FROM FlatData Fd
						 INNER JOIN
						(
							SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
						)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
						 WHERE FREETEXT(HadithArabicText, @search) OR FREETEXT(kitaabNameArabic,@search) OR FREETEXT(BaabNameArabic,@search)
						) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)


						 select COUNT(*) TotalRecords  FROM FlatData Fd
						 INNER JOIN
						(
							SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
						)Data  ON Fd.HadithBookId = Data.HadithBookID 
						  WHERE FREETEXT(HadithArabicText, @search) OR FREETEXT(kitaabNameArabic,@search) OR FREETEXT(BaabNameArabic,@search)

			   End
		 ELSE
 
		 Begin

		  SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber,HadithArabicText,HadithUrduText,
			HadithHashiaText,Id, HadithHukamAjmali
			 FROM
			 (
				Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
				(CASE WHEN (@BukhariTarqeem='HadeesNumber' AND Fd.HadithBookID=1) THEN HadeesNumber
							WHEN (@BukhariTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=1) THEN HadeesNumberTOne
							WHEN (@BukhariTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=1) THEN HadeesNumberTTwo
							WHEN (@BukhariTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=1) THEN HadeesNumberTThree
							WHEN (@BukhariTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=1) THEN HadeesNumberTFour

							WHEN (@BukhariTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=1) THEN HadeesNumberTFive
							WHEN (@BukhariTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=1) THEN HadeesNumberTSix
							WHEN (@BukhariTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=1) THEN HadeesNumberTSeven
							WHEN (@BukhariTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=1) THEN HadeesNumberTEight
							WHEN (@BukhariTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=1) THEN HadeesNumberTNine
							WHEN (@BukhariTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=1) THEN HadeesNumberTTen

							WHEN (@MuslimTarqeem='HadeesNumber' AND Fd.HadithBookID=2) THEN HadeesNumber
							WHEN (@MuslimTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=2) THEN HadeesNumberTOne
							WHEN (@MuslimTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=2) THEN HadeesNumberTTwo
							WHEN (@MuslimTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=2) THEN HadeesNumberTThree
							WHEN (@MuslimTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=2) THEN HadeesNumberTFour

							WHEN (@MuslimTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=2) THEN HadeesNumberTFive
							WHEN (@MuslimTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=2) THEN HadeesNumberTSix
							WHEN (@MuslimTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=2) THEN HadeesNumberTSeven
							WHEN (@MuslimTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=2) THEN HadeesNumberTEight
							WHEN (@MuslimTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=2) THEN HadeesNumberTNine
							WHEN (@MuslimTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=2) THEN HadeesNumberTTen

							WHEN (@DaudTarqeem='HadeesNumber' AND Fd.HadithBookID=3) THEN HadeesNumber
							WHEN (@DaudTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=3) THEN HadeesNumberTOne
							WHEN (@DaudTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=3) THEN HadeesNumberTTwo
							WHEN (@DaudTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=3) THEN HadeesNumberTThree
							WHEN (@DaudTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=3) THEN HadeesNumberTFour

							WHEN (@DaudTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=3) THEN HadeesNumberTFive
							WHEN (@DaudTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=3) THEN HadeesNumberTSix
							WHEN (@DaudTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=3) THEN HadeesNumberTSeven
							WHEN (@DaudTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=3) THEN HadeesNumberTEight
							WHEN (@DaudTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=3) THEN HadeesNumberTNine
							WHEN (@DaudTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=3) THEN HadeesNumberTTen

							WHEN (@NisaiTarqeem='HadeesNumber' AND Fd.HadithBookID=4) THEN HadeesNumber
							WHEN (@NisaiTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=4) THEN HadeesNumberTOne
							WHEN (@NisaiTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=4) THEN HadeesNumberTTwo
							WHEN (@NisaiTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=4) THEN HadeesNumberTThree
							WHEN (@NisaiTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=4) THEN HadeesNumberTFour

							WHEN (@NisaiTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=4) THEN HadeesNumberTFive
							WHEN (@NisaiTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=4) THEN HadeesNumberTSix
							WHEN (@NisaiTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=4) THEN HadeesNumberTSeven
							WHEN (@NisaiTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=4) THEN HadeesNumberTEight
							WHEN (@NisaiTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=4) THEN HadeesNumberTNine
							WHEN (@NisaiTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=4) THEN HadeesNumberTTen

							WHEN (@TrimziTarqeem='HadeesNumber' AND Fd.HadithBookID=5) THEN HadeesNumber
							WHEN (@TrimziTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=5) THEN HadeesNumberTOne
							WHEN (@TrimziTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=5) THEN HadeesNumberTTwo
							WHEN (@TrimziTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=5) THEN HadeesNumberTThree
							WHEN (@TrimziTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=5) THEN HadeesNumberTFour

							WHEN (@TrimziTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=5) THEN HadeesNumberTFive
							WHEN (@TrimziTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=5) THEN HadeesNumberTSix
							WHEN (@TrimziTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=5) THEN HadeesNumberTSeven
							WHEN (@TrimziTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=5) THEN HadeesNumberTEight
							WHEN (@TrimziTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=5) THEN HadeesNumberTNine
							WHEN (@TrimziTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=5) THEN HadeesNumberTTen

							WHEN (@MajahTarqeem='HadeesNumber' AND Fd.HadithBookID=6) THEN HadeesNumber
							WHEN (@MajahTarqeem='HadeesNumberTOne' AND Fd.HadithBookID=6) THEN HadeesNumberTOne
							WHEN (@MajahTarqeem='HadeesNumberTTwo' AND Fd.HadithBookID=6) THEN HadeesNumberTTwo
							WHEN (@MajahTarqeem='HadeesNumberTThree' AND Fd.HadithBookID=6) THEN HadeesNumberTThree
							WHEN (@MajahTarqeem='HadeesNumberTFour' AND Fd.HadithBookID=6) THEN HadeesNumberTFour

							WHEN (@MajahTarqeem='HadeesNumberTFive' AND Fd.HadithBookID=6) THEN HadeesNumberTFive
							WHEN (@MajahTarqeem='HadeesNumberTSix' AND Fd.HadithBookID=6) THEN HadeesNumberTSix
							WHEN (@MajahTarqeem='HadeesNumberTSeven' AND Fd.HadithBookID=6) THEN HadeesNumberTSeven
							WHEN (@MajahTarqeem='HadeesNumberTEight' AND Fd.HadithBookID=6) THEN HadeesNumberTEight
							WHEN (@MajahTarqeem='HadeesNumberTNine' AND Fd.HadithBookID=6) THEN HadeesNumberTNine
							WHEN (@MajahTarqeem='HadeesNumberTTen' AND Fd.HadithBookID=6) THEN HadeesNumberTTen
							END) AS HadeesNumber, IdAhadith AS Id,
			
				  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
				  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,
				  (CASE WHEN (@BukhariTranslation='HadithUrduText' AND Fd.HadithBookID=1) THEN HadithUrduText
							WHEN (@BukhariTranslation='HadithUrduTextOne' AND Fd.HadithBookID=1) THEN HadithUrduTextOne
							WHEN (@BukhariTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=1) THEN HadithUrduTextTwo
							WHEN (@BukhariTranslation='HadithUrduTextThree' AND Fd.HadithBookID=1) THEN HadithUrduTextThree
							WHEN (@BukhariTranslation='HadithUrduTextFour' AND Fd.HadithBookID=1) THEN HadithUrduTextFour

							WHEN (@BukhariTranslation='HadithUrduTextFive' AND Fd.HadithBookID=1) THEN HadithUrduTextFive
							WHEN (@BukhariTranslation='HadithUrduTextSix' AND Fd.HadithBookID=1) THEN HadithUrduTextSix
							WHEN (@BukhariTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=1) THEN HadithUrduTextSeven
							WHEN (@BukhariTranslation='HadithUrduTextEight' AND Fd.HadithBookID=1) THEN HadithUrduTextEight
							WHEN (@BukhariTranslation='HadithUrduTextNine' AND Fd.HadithBookID=1) THEN HadithUrduTextNine
							WHEN (@BukhariTranslation='HadithUrduTextTen' AND Fd.HadithBookID=1) THEN HadithUrduTextTen

							WHEN (@MuslimTranslation='HadithUrduText' AND Fd.HadithBookID=2) THEN HadithUrduText
							WHEN (@MuslimTranslation='HadithUrduTextOne' AND Fd.HadithBookID=2) THEN HadithUrduTextOne
							WHEN (@MuslimTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=2) THEN HadithUrduTextTwo
							WHEN (@MuslimTranslation='HadithUrduTextThree' AND Fd.HadithBookID=2) THEN HadithUrduTextThree
							WHEN (@MuslimTranslation='HadithUrduTextFour' AND Fd.HadithBookID=2) THEN HadithUrduTextFour

							WHEN (@MuslimTranslation='HadithUrduTextFive' AND Fd.HadithBookID=2) THEN HadithUrduTextFive
							WHEN (@MuslimTranslation='HadithUrduTextSix' AND Fd.HadithBookID=2) THEN HadithUrduTextSix
							WHEN (@MuslimTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=2) THEN HadithUrduTextSeven
							WHEN (@MuslimTranslation='HadithUrduTextEight' AND Fd.HadithBookID=2) THEN HadithUrduTextEight
							WHEN (@MuslimTranslation='HadithUrduTextNine' AND Fd.HadithBookID=2) THEN HadithUrduTextNine
							WHEN (@MuslimTranslation='HadithUrduTextTen' AND Fd.HadithBookID=2) THEN HadithUrduTextTen

							WHEN (@DaudTranslation='HadithUrduText' AND Fd.HadithBookID=3) THEN HadithUrduText
							WHEN (@DaudTranslation='HadithUrduTextOne' AND Fd.HadithBookID=3) THEN HadithUrduTextOne
							WHEN (@DaudTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=3) THEN HadithUrduTextTwo
							WHEN (@DaudTranslation='HadithUrduTextThree' AND Fd.HadithBookID=3) THEN HadithUrduTextThree
							WHEN (@DaudTranslation='HadithUrduTextFour' AND Fd.HadithBookID=3) THEN HadithUrduTextFour

							WHEN (@DaudTranslation='HadithUrduTextFive' AND Fd.HadithBookID=3) THEN HadithUrduTextFive
							WHEN (@DaudTranslation='HadithUrduTextSix' AND Fd.HadithBookID=3) THEN HadithUrduTextSix
							WHEN (@DaudTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=3) THEN HadithUrduTextSeven
							WHEN (@DaudTranslation='HadithUrduTextEight' AND Fd.HadithBookID=3) THEN HadithUrduTextEight
							WHEN (@DaudTranslation='HadithUrduTextNine' AND Fd.HadithBookID=3) THEN HadithUrduTextNine
							WHEN (@DaudTranslation='HadithUrduTextTen' AND Fd.HadithBookID=3) THEN HadithUrduTextTen

							WHEN (@NisaiTranslation='HadithUrduText' AND Fd.HadithBookID=4) THEN HadithUrduText
							WHEN (@NisaiTranslation='HadithUrduTextOne' AND Fd.HadithBookID=4) THEN HadithUrduTextOne
							WHEN (@NisaiTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=4) THEN HadithUrduTextTwo
							WHEN (@NisaiTranslation='HadithUrduTextThree' AND Fd.HadithBookID=4) THEN HadithUrduTextThree
							WHEN (@NisaiTranslation='HadithUrduTextFour' AND Fd.HadithBookID=4) THEN HadithUrduTextFour

							WHEN (@NisaiTranslation='HadithUrduTextFive' AND Fd.HadithBookID=4) THEN HadithUrduTextFive
							WHEN (@NisaiTranslation='HadithUrduTextSix' AND Fd.HadithBookID=4) THEN HadithUrduTextSix
							WHEN (@NisaiTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=4) THEN HadithUrduTextSeven
							WHEN (@NisaiTranslation='HadithUrduTextEight' AND Fd.HadithBookID=4) THEN HadithUrduTextEight
							WHEN (@NisaiTranslation='HadithUrduTextNine' AND Fd.HadithBookID=4) THEN HadithUrduTextNine
							WHEN (@NisaiTranslation='HadithUrduTextTen' AND Fd.HadithBookID=4) THEN HadithUrduTextTen

							WHEN (@TrimziTranslation='HadithUrduText' AND Fd.HadithBookID=5) THEN HadithUrduText
							WHEN (@TrimziTranslation='HadithUrduTextOne' AND Fd.HadithBookID=5) THEN HadithUrduTextOne
							WHEN (@TrimziTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=5) THEN HadithUrduTextTwo
							WHEN (@TrimziTranslation='HadithUrduTextThree' AND Fd.HadithBookID=5) THEN HadithUrduTextThree
							WHEN (@TrimziTranslation='HadithUrduTextFour' AND Fd.HadithBookID=5) THEN HadithUrduTextFour

							WHEN (@TrimziTranslation='HadithUrduTextFive' AND Fd.HadithBookID=5) THEN HadithUrduTextFive
							WHEN (@TrimziTranslation='HadithUrduTextSix' AND Fd.HadithBookID=5) THEN HadithUrduTextSix
							WHEN (@TrimziTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=5) THEN HadithUrduTextSeven
							WHEN (@TrimziTranslation='HadithUrduTextEight' AND Fd.HadithBookID=5) THEN HadithUrduTextEight
							WHEN (@TrimziTranslation='HadithUrduTextNine' AND Fd.HadithBookID=5) THEN HadithUrduTextNine
							WHEN (@TrimziTranslation='HadithUrduTextTen' AND Fd.HadithBookID=5) THEN HadithUrduTextTen

							WHEN (@MajahTranslation='HadithUrduText' AND Fd.HadithBookID=6) THEN HadithUrduText
							WHEN (@MajahTranslation='HadithUrduTextOne' AND Fd.HadithBookID=6) THEN HadithUrduTextOne
							WHEN (@MajahTranslation='HadithUrduTextTwo' AND Fd.HadithBookID=6) THEN HadithUrduTextTwo
							WHEN (@MajahTranslation='HadithUrduTextThree' AND Fd.HadithBookID=6) THEN HadithUrduTextThree
							WHEN (@MajahTranslation='HadithUrduTextFour' AND Fd.HadithBookID=6) THEN HadithUrduTextFour

							WHEN (@MajahTranslation='HadithUrduTextFive' AND Fd.HadithBookID=6) THEN HadithUrduTextFive
							WHEN (@MajahTranslation='HadithUrduTextSix' AND Fd.HadithBookID=6) THEN HadithUrduTextSix
							WHEN (@MajahTranslation='HadithUrduTextSeven' AND Fd.HadithBookID=6) THEN HadithUrduTextSeven
							WHEN (@MajahTranslation='HadithUrduTextEight' AND Fd.HadithBookID=6) THEN HadithUrduTextEight
							WHEN (@MajahTranslation='HadithUrduTextNine' AND Fd.HadithBookID=6) THEN HadithUrduTextNine
							WHEN (@MajahTranslation='HadithUrduTextTen' AND Fd.HadithBookID=6) THEN HadithUrduTextTen
							END) AS HadithUrduText,HadithHukamAjmali,
 
				  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
					 FROM FlatData Fd
					 INNER JOIN
					(
						SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
					)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
					 WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							 OR FREETEXT(kitaabNameUrdu,@search) OR FREETEXT(BaabNameUrdu,@search)
					) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)


					 select COUNT(*) TotalRecords  FROM FlatData Fd
					 INNER JOIN
					(
						SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
					)Data  ON Fd.HadithBookId = Data.HadithBookID 
					  WHERE (Data.HadithBookID=1 AND ((@BukhariTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @BukhariTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@BukhariTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@BukhariTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@BukhariTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@BukhariTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@BukhariTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@BukhariTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@BukhariTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@BukhariTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@BukhariTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=2 AND ((@MuslimTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MuslimTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MuslimTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MuslimTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MuslimTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MuslimTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MuslimTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MuslimTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MuslimTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MuslimTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MuslimTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=3 AND ((@DaudTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @DaudTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@DaudTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@DaudTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@DaudTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@DaudTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@DaudTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@DaudTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@DaudTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@DaudTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@DaudTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=4 AND ((@TrimziTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @TrimziTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@TrimziTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@TrimziTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@TrimziTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@TrimziTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@TrimziTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@TrimziTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@TrimziTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@TrimziTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@TrimziTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=5 AND ((@NisaiTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @NisaiTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@NisaiTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@NisaiTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@NisaiTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@NisaiTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@NisaiTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@NisaiTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@NisaiTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@NisaiTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@NisaiTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							OR
							(Data.HadithBookID=6 AND ((@MajahTranslation='HadithUrduText' AND FREETEXT(HadithUrduText, @search))
							OR ( @MajahTranslation='HadithUrduTextOne' AND FREETEXT(HadithUrduTextOne, @search))
							OR (@MajahTranslation='HadithUrduTextTwo' AND FREETEXT(HadithUrduTextTwo, @search))
							OR (@MajahTranslation='HadithUrduTextThree' AND FREETEXT(HadithUrduTextThree, @search))
							OR (@MajahTranslation='HadithUrduTextFour' AND FREETEXT(HadithUrduTextFour, @search)) 
							OR (@MajahTranslation='HadithUrduTextFive' AND FREETEXT(HadithUrduTextFive, @search))

							OR (@MajahTranslation='HadithUrduTextSix' AND FREETEXT(HadithUrduTextSix, @search))
							OR (@MajahTranslation='HadithUrduTextSeven' AND FREETEXT(HadithUrduTextSeven, @search))
							OR (@MajahTranslation='HadithUrduTextEight' AND FREETEXT(HadithUrduTextEight, @search))
							OR (@MajahTranslation='HadithUrduTextNine' AND FREETEXT(HadithUrduTextNine, @search))
							OR (@MajahTranslation='HadithUrduTextTen' AND FREETEXT(HadithUrduTextTen, @search))))
							 OR FREETEXT(kitaabNameUrdu,@search) OR FREETEXT(BaabNameUrdu,@search)

		End
	End

End

GO
/****** Object:  StoredProcedure [dbo].[usp_Search_New]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[usp_Search_New]

@search nvarchar(500),
@isUrdu bit,
@isAdvanceSearch bit,
@bookList varchar(50)='0',
@pNo int=1,
@pSize int=10
As
Begin

DECLARE @IssUrdu bit
DECLARE @BookListCSV VARCHAR(100)
DECLARE @PageNo int
DECLARE @PageSize int

set @search='"'+@search+'"'


SET @BookListCSV=@bookList
SET @PageNo=@pNo
SET @PageSize=@pSize
Set @IssUrdu=@isUrdu


IF @isAdvanceSearch<>1
begin
IF @isUrdu<>1
 Begin

 SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber, [dbo].[RemoveASCIICharactersInRange1](HadithArabicText) AS HadithArabicText,HadithUrduText,
	HadithHashiaText,Id
	 FROM
	 (
Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
HadeesNumber, IdAhadith AS Id,
			
  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,HadithUrduText,
  
  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
			 FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
			 WHERE CONTAINS(HadithArabicText, @search) OR CONTAINS(kitaabNameArabic,@search) OR CONTAINS(BaabNameArabic,@search)
			) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)


			 select COUNT(*) TotalRecords  FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			  WHERE CONTAINS(HadithArabicText, @search) OR CONTAINS(kitaabNameArabic,@search) OR CONTAINS(BaabNameArabic,@search)

			   End
 ELSE
 
 Begin

  SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber,HadithArabicText,HadithUrduText,
	HadithHashiaText,Id
	 FROM
	 (
Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
HadeesNumber, IdAhadith AS Id,
			
  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,HadithUrduText,
  
  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
			 FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
			 WHERE CONTAINS(HadithUrduText,  @search) OR CONTAINS(kitaabNameUrdu,@search) OR CONTAINS(BaabNameUrdu,@search)
			) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)


			 select COUNT(*) TotalRecords  FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 WHERE CONTAINS(HadithUrduText,  @search) OR CONTAINS(kitaabNameUrdu,@search) OR CONTAINS(BaabNameUrdu,@search)

 End
 
 End

 ELSE

 Begin
 IF @isUrdu<>1
 Begin

 SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber,HadithArabicText,HadithUrduText,
	HadithHashiaText,Id
	 FROM
	 (
Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
HadeesNumber, IdAhadith AS Id,
			
  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,HadithUrduText,
 
  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
			 FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
			 WHERE FREETEXT(HadithArabicText, @search) OR FREETEXT(kitaabNameArabic,@search) OR FREETEXT(BaabNameArabic,@search)
			) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)


			 select COUNT(*) TotalRecords  FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			  WHERE FREETEXT(HadithArabicText, @search) OR FREETEXT(kitaabNameArabic,@search) OR FREETEXT(BaabNameArabic,@search)

			   End
 ELSE
 
 Begin

  SELECT RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu,BaabNameArabic,BaabNameUrdu,HadeesNumber,HadithArabicText,HadithUrduText,
	HadithHashiaText,Id
	 FROM
	 (
Select ROW_NUMBER() over(order by Fd.HadithBookID,Fd.HadeesNumber) As RowNo,HadithBookName,HadithBookNameUrdu,kitaabNameArabic,kitaabNameUrdu, 
HadeesNumber, IdAhadith AS Id,
			
  Case When Len(BaabNameArabic) > 50 Then Left(BaabNameArabic,50) + '...' Else BaabNameArabic End As BaabNameArabic,
  Case When Len(BaabNameUrdu) > 50 Then Left(BaabNameUrdu,50) + '...' Else BaabNameUrdu End As BaabNameUrdu,HadithArabicText,HadithUrduText,
 
  Case When DataLength(HadithHashiaText) > 140 Then SUBSTRING(HadithHashiaText,0,140) + '...' Else HadithHashiaText End As HadithHashiaText
  
			 FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			 
			 WHERE FREETEXT(HadithUrduText,  @search) OR FREETEXT(kitaabNameUrdu,@search) OR FREETEXT(BaabNameUrdu,@search)
			) Data where RowNo Between (((@PageNo-1)*@PageSize)+1) And (@PageSize*@PageNo)


			 select COUNT(*) TotalRecords  FROM FlatData Fd
			 INNER JOIN
			(
				SELECT Token AS HadithBookID FROM dbo.String_To_Table(@BookListCSV,',')
			)Data  ON Fd.HadithBookId = Data.HadithBookID 
			  WHERE FREETEXT(HadithUrduText,  @search) OR FREETEXT(kitaabNameUrdu,@search) OR FREETEXT(BaabNameUrdu,@search)

End
 End

End

GO
/****** Object:  StoredProcedure [dbo].[usp_SetDefaultHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_SetDefaultHadith]
@BookId int,
@HadithNo DECIMAL(18,2),
@ToDate date,
@FromDate date
AS
BEGIN
--Truncate Table DefaultHadith
	IF EXISTS(SELECT 1 FROM DefaultHadith WHERE (@FromDate BETWEEN FromDate AND ToDate) OR (@ToDate BETWEEN FromDate AND ToDate))
		BEGIN
			SELECT 'EXISTS' AS Result
		END
	ELSE
		BEGIN
			INSERT INTO DefaultHadith (BookId,HadithNo,ToDate, FromDate)
				VALUES (@BookId,@HadithNo,@ToDate, @FromDate)
			SELECT 'INSERTED' AS Result
		END
End
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateHadith]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[usp_UpdateHadith]
  @Id                       int
, @HadeesNumber             smallint

, @HadeesNumberTOne         float
, @HadeesNumberTTwo			float
, @HadeesNumberTThree       float
, @HadeesNumberTFour        float
, @HadeesNumberTFive		float

, @HadeesNumberTSix         float
, @HadeesNumberTSeven       float
, @HadeesNumberTEight       float
, @HadeesNumberTNine        float
, @HadeesNumberTTen         float

 ,@kitaabID					int
, @BaabID                   int
, @HadithArabicText         ntext

, @HadithUrduText            ntext
, @HadithUrduOneText            ntext
, @HadithUrduTwoText            ntext
, @HadithUrduThreeText            ntext
, @HadithUrduFourText            ntext
, @HadithUrduFiveText            ntext

, @HadithUrduTextSix            ntext
, @HadithUrduTextSeven            ntext
, @HadithUrduTextEight            ntext
, @HadithUrduTextNine            ntext
, @HadithUrduTextTen            ntext

, @HadithHashiaText          ntext
, @HadithHashiaTextOne          ntext
, @HadithHashiaTextTwo          ntext
, @HadithHashiaTextThree          ntext
, @HadithHashiaTextFour          ntext
, @HadithHashiaTextFive          ntext

, @HadithHashiaTextSix            ntext
, @HadithHashiaTextSeven            ntext
, @HadithHashiaTextEight            ntext
, @HadithHashiaTextNine            ntext
, @HadithHashiaTextTen            ntext

, @HadithTypeAtraaf          nvarchar(255)
, @HadithTypeRawaat          nvarchar(255)
, @HadithTypeQFT             nvarchar(255)

, @HadithHukamAjmali         ntext
, @HadithHukamAjmaliOne         ntext
, @HadithHukamAjmaliTwo         ntext
, @HadithHukamAjmaliThree         ntext
, @HadithHukamAjmaliFour         ntext
, @HadithHukamAjmaliFive         ntext

, @HadithHukamAjmaliSix            ntext
, @HadithHukamAjmaliSeven            ntext
, @HadithHukamAjmaliEight            ntext
, @HadithHukamAjmaliNine            ntext
, @HadithHukamAjmaliTen            ntext

, @HadithHukamTafseeli       ntext
, @HadithMouzuhArabic        ntext
, @HadithMouzuhUrdu          ntext
, @HadithHukamTafseeliArabic ntext
, @TakhreejUrls              ntext
As
Begin
Update Ahadith 
Set 
HadeesNumber=@HadeesNumber
,HadeesNumberTOne=@HadeesNumberTOne
,@HadeesNumberTTwo=@HadeesNumberTTwo
,HadeesNumberTThree=@HadeesNumberTThree
,HadeesNumberTFour=@HadeesNumberTFour
,HadeesNumberTFive=@HadeesNumberTFive

,HadeesNumberTSix=@HadeesNumberTSix
,HadeesNumberTSeven=@HadeesNumberTSeven
,HadeesNumberTEight=@HadeesNumberTEight
,HadeesNumberTNine=@HadeesNumberTNine
,HadeesNumberTTen=@HadeesNumberTTen

       
,BaabID=@BaabID                   
,HadithArabicText=@HadithArabicText         
,HadithUrduText=@HadithUrduText

,HadithUrduTextOne=@HadithUrduOneText 
,HadithUrduTextTwo=@HadithUrduTwoText 
,HadithUrduTextThree=@HadithUrduThreeText 
,HadithUrduTextFour=@HadithUrduFourText 
,HadithUrduTextFive=@HadithUrduFiveText 

,HadithUrduTextSix=@HadithUrduTextSix
,HadithUrduTextSeven=@HadithUrduTextSeven
,HadithUrduTextEight=@HadithUrduTextEight
,HadithUrduTextNine=@HadithUrduTextNine
,HadithUrduTextTen=@HadithUrduTextTen

          
,HadithHashiaText=@HadithHashiaText   
,HadithHashiaTextOne=@HadithHashiaTextOne
,HadithHashiaTextTwo=@HadithHashiaTextTwo 
,HadithHashiaTextThree=@HadithHashiaTextThree 
,HadithHashiaTextFour=@HadithHashiaTextFour 
,HadithHashiaTextFive=@HadithHashiaTextFive

,HadithHashiaTextSix=@HadithHashiaTextSix  
,HadithHashiaTextSeven=@HadithHashiaTextSeven  
,HadithHashiaTextEight=@HadithHashiaTextEight  
,HadithHashiaTextNine=@HadithHashiaTextNine  
,HadithHashiaTextTen=@HadithHashiaTextTen  
      
,HadithTypeAtraaf=@HadithTypeAtraaf         
,HadithTypeRawaat=@HadithTypeRawaat         
,HadithTypeQFT=@HadithTypeQFT  
          
,HadithHukamAjmali=@HadithHukamAjmali
,HadithHukamAjmaliOne=@HadithHukamAjmaliOne
,HadithHukamAjmaliTwo=@HadithHukamAjmaliTwo
,HadithHukamAjmaliThree=@HadithHukamAjmaliThree
,HadithHukamAjmaliFour=@HadithHukamAjmaliFour
,HadithHukamAjmaliFive=@HadithHukamAjmaliFive

,HadithHukamAjmaliSix=@HadithHukamAjmaliSix
,HadithHukamAjmaliSeven=@HadithHukamAjmaliSeven
,HadithHukamAjmaliEight=@HadithHukamAjmaliEight
,HadithHukamAjmaliNine=@HadithHukamAjmaliNine
,HadithHukamAjmaliTen=@HadithHukamAjmaliTen
     
,HadithHukamTafseeli=@HadithHukamTafseeli      
,HadithMouzuhArabic=@HadithMouzuhArabic       
,HadithMouzuhUrdu=@HadithMouzuhUrdu         
,HadithHukamTafseeliArabic=@HadithHukamTafseeliArabic
,TakhreejUrls=@TakhreejUrls  
Where Id=@Id

--update flatdata as well
exec [usp_UpdateHadithInFlatData] @Id, @HadeesNumber, @HadeesNumberTOne, @HadeesNumberTTwo, @HadeesNumberTThree, @HadeesNumberTFour, @HadeesNumberTFive,
@HadeesNumberTSix, @HadeesNumberTSeven, @HadeesNumberTEight, @HadeesNumberTNine, @HadeesNumberTTen
,@kitaabID, @BaabID , @HadithArabicText , @HadithUrduText, @HadithUrduOneText,
 @HadithUrduTwoText, @HadithUrduThreeText, @HadithUrduFourText, @HadithUrduFiveText,
 @HadithUrduTextSix, @HadithUrduTextSeven, @HadithUrduTextEight, @HadithUrduTextNine, @HadithUrduTextTen , 
 @HadithHashiaText, @HadithHashiaTextOne, @HadithHashiaTextTwo, @HadithHashiaTextThree, @HadithHashiaTextFour, @HadithHashiaTextFive,
 @HadithHashiaTextSix, @HadithHashiaTextSeven, @HadithHashiaTextEight, @HadithHashiaTextNine, @HadithHashiaTextTen, 
 @HadithTypeAtraaf , @HadithTypeRawaat  , @HadithTypeQFT , @HadithHukamAjmali ,@HadithHukamAjmaliOne , @HadithHukamAjmaliTwo , @HadithHukamAjmaliThree , @HadithHukamAjmaliFour
 ,@HadithHukamAjmaliFive,@HadithHukamAjmaliSix, @HadithHukamAjmaliSeven, @HadithHukamAjmaliEight, @HadithHukamAjmaliNine, @HadithHukamAjmaliTen,
  @HadithHukamTafseeli , @HadithMouzuhArabic , @HadithMouzuhUrdu, @HadithHukamTafseeliArabic, @TakhreejUrls 

Select 'Updated'


End


GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateHadithInFlatData]    Script Date: 4/5/2024 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZAFARULLAH
-- Create date: 
-- Description:	
-- =============================================
CREATE Proc [dbo].[usp_UpdateHadithInFlatData]
  @IdAhadith                 int
, @HadeesNumber              smallint
, @HadeesNumberTOne         float
, @HadeesNumberTTwo			float
, @HadeesNumberTThree       float
, @HadeesNumberTFour        float
, @HadeesNumberTFive		float

, @HadeesNumberTSix         float
, @HadeesNumberTSeven       float
, @HadeesNumberTEight       float
, @HadeesNumberTNine        float
, @HadeesNumberTTen         float

, @kitaabID					 int
, @BaabID                    int
, @HadithArabicText          ntext
, @HadithUrduText            ntext
, @HadithUrduOneText         ntext
, @HadithUrduTwoText         ntext
, @HadithUrduThreeText       ntext
, @HadithUrduFourText        ntext
, @HadithUrduFiveText        ntext

, @HadithUrduTextSix            ntext
, @HadithUrduTextSeven            ntext
, @HadithUrduTextEight            ntext
, @HadithUrduTextNine            ntext
, @HadithUrduTextTen            ntext

, @HadithHashiaText          ntext
, @HadithHashiaTextOne          ntext
, @HadithHashiaTextTwo          ntext
, @HadithHashiaTextThree          ntext
, @HadithHashiaTextFour          ntext
, @HadithHashiaTextFive          ntext

, @HadithHashiaTextSix            ntext
, @HadithHashiaTextSeven            ntext
, @HadithHashiaTextEight            ntext
, @HadithHashiaTextNine            ntext
, @HadithHashiaTextTen            ntext
  
, @HadithTypeAtraaf          nvarchar(255)
, @HadithTypeRawaat          nvarchar(255)
, @HadithTypeQFT             nvarchar(255)

, @HadithHukamAjmali         ntext
, @HadithHukamAjmaliOne         ntext
, @HadithHukamAjmaliTwo         ntext
, @HadithHukamAjmaliThree         ntext
, @HadithHukamAjmaliFour         ntext
, @HadithHukamAjmaliFive         ntext

, @HadithHukamAjmaliSix            ntext
, @HadithHukamAjmaliSeven            ntext
, @HadithHukamAjmaliEight            ntext
, @HadithHukamAjmaliNine            ntext
, @HadithHukamAjmaliTen            ntext
   
, @HadithHukamTafseeli       ntext
, @HadithMouzuhArabic        ntext
, @HadithMouzuhUrdu          ntext
, @HadithHukamTafseeliArabic ntext
, @TakhreejUrls              ntext
As
Begin

update FlatData
set
HadeesNumber=@HadeesNumber
,HadeesNumberTOne=@HadeesNumberTOne
,@HadeesNumberTTwo=@HadeesNumberTTwo
,HadeesNumberTThree=@HadeesNumberTThree
,HadeesNumberTFour=@HadeesNumberTFour
,HadeesNumberTFive=@HadeesNumberTFive,

HadeesNumberTSix=@HadeesNumberTSix
,HadeesNumberTSeven=@HadeesNumberTSeven
,HadeesNumberTEight=@HadeesNumberTEight
,HadeesNumberTNine=@HadeesNumberTNine
,HadeesNumberTTen=@HadeesNumberTTen,

IdKutab=(select ID from Kutab where IDPK=@kitaabID),
 HiddenIdKutab=(select HiddenID from Kutab where IDPK=@kitaabID),
 IDPKkutab=@kitaabID,
 BookID=(select BookID from Kutab where IDPK=@kitaabID),
 kitaabNameUrdu=(select kitaabNameUrdu from Kutab where IDPK=@kitaabID),
 KitaabNameEng=(select KitaabNameEng from Kutab where IDPK=@kitaabID),
 kitaabNameArabic=(select kitaabNameArabic from Kutab where IDPK=@kitaabID),
 KitaabTamheedArabic=(select KitaabTamheedArabic from Kutab where IDPK=@kitaabID),
 KitaabTamheedUrdu=(select KitaabTamheedUrdu from Kutab where IDPK=@kitaabID),

IdAbwaab=(select ID from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 HiddenIDAbwaab=(select HiddenID from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 AbwaabTamheedArabic=(select AbwaabTamheedArabic from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 AbwaabTamheedUrdu=(select AbwaabTamheedUrdu from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 IDPKAbwaab=@BaabID,
KitaabID=@kitaabID,
BaabNameArabic=(select BaabNameArabic from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 BaabNameUrdu=(select BaabNameUrdu from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 BaabNameEng=(select BaabNameEng from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabArabic=(Select TarjumatulBaabArabic from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrdu=(Select TarjumatulBaabUrdu from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 
 TarjumatulBaabUrduOne=(Select TarjumatulBaabUrduOne from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduTwo=(Select TarjumatulBaabUrduTwo from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduThree=(Select TarjumatulBaabUrduThree from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduFour=(Select TarjumatulBaabUrduFour from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduFive=(Select TarjumatulBaabUrduFive from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduSix=(Select TarjumatulBaabUrduSix from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduSeven=(Select TarjumatulBaabUrduSeven from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduEight=(Select TarjumatulBaabUrduEight from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduNine=(Select TarjumatulBaabUrduNine from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
 TarjumatulBaabUrduTen=(Select TarjumatulBaabUrduTen from Abwaab where KitaabID=@kitaabID and IDPK=@BaabID),
          
BaabID=@BaabID                   
,HadithArabicText=@HadithArabicText         
,HadithUrduText=@HadithUrduText

,HadithUrduTextOne=@HadithUrduOneText 
,HadithUrduTextTwo=@HadithUrduTwoText 
,HadithUrduTextThree=@HadithUrduThreeText 
,HadithUrduTextFour=@HadithUrduFourText 
,HadithUrduTextFive=@HadithUrduFiveText 

,HadithUrduTextSix=@HadithUrduTextSix
,HadithUrduTextSeven=@HadithUrduTextSeven
,HadithUrduTextEight=@HadithUrduTextEight
,HadithUrduTextNine=@HadithUrduTextNine
,HadithUrduTextTen=@HadithUrduTextTen
      
,HadithHashiaText=@HadithHashiaText  
,HadithHashiaTextOne=@HadithHashiaTextOne
,HadithHashiaTextTwo=@HadithHashiaTextTwo 
,HadithHashiaTextThree=@HadithHashiaTextThree 
,HadithHashiaTextFour=@HadithHashiaTextFour 
,HadithHashiaTextFive=@HadithHashiaTextFive 

,HadithHashiaTextSix=@HadithHashiaTextSix  
,HadithHashiaTextSeven=@HadithHashiaTextSeven  
,HadithHashiaTextEight=@HadithHashiaTextEight  
,HadithHashiaTextNine=@HadithHashiaTextNine  
,HadithHashiaTextTen=@HadithHashiaTextTen  
       
,HadithTypeAtraaf=@HadithTypeAtraaf         
,HadithTypeRawaat=@HadithTypeRawaat         
,HadithTypeQFT=@HadithTypeQFT
        
,HadithHukamAjmali=@HadithHukamAjmali
,HadithHukamAjmaliOne=@HadithHukamAjmaliOne
,HadithHukamAjmaliTwo=@HadithHukamAjmaliTwo
,HadithHukamAjmaliThree=@HadithHukamAjmaliThree
,HadithHukamAjmaliFour=@HadithHukamAjmaliFour
,HadithHukamAjmaliFive=@HadithHukamAjmaliFive

,HadithHukamAjmaliSix=@HadithHukamAjmaliSix
,HadithHukamAjmaliSeven=@HadithHukamAjmaliSeven
,HadithHukamAjmaliEight=@HadithHukamAjmaliEight
,HadithHukamAjmaliNine=@HadithHukamAjmaliNine
,HadithHukamAjmaliTen=@HadithHukamAjmaliTen
        
,HadithHukamTafseeli=@HadithHukamTafseeli      
,HadithMouzuhArabic=@HadithMouzuhArabic       
,HadithMouzuhUrdu=@HadithMouzuhUrdu         
,HadithHukamTafseeliArabic=@HadithHukamTafseeliArabic
,TakhreejUrls=@TakhreejUrls
where IdAhadith=@IdAhadith

End
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'615' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'吡巎㤴䯿 谻隸ߞ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1290' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ᄂἻ岡䘫骞뵎㲣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HiddenID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HiddenID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'855' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N' 湏º䚸힃გ࿾䕥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDPK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDPK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'Ѵ魪긫䶢鎋﹟ㄵꮆ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KitaabID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'KitaabID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'KitaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3936' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쥾⣜睩䏓㊖痆ऺ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BaabNameArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BaabNameArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1788' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'怐뵲䰝嶭鸬ᇜ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BaabNameUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BaabNameUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'BaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2460' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'瑡폱迤䢹辊墼⥩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarjumatulBaabArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarjumatulBaabArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2325' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'짘璉렶䗎門냼꧲䪆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TarjumatulBaabUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TarjumatulBaabUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab', @level2type=N'COLUMN',@level2name=N'TarjumatulBaabUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/25/2013 8:26:44 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/30/2013 12:42:02 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'[Abwaab].[KitaabID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Abwaab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'276' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Abwaab'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1050' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⌉䰰Ჳ估䍚싨' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2004' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'緄蕠뉩伜Მ峀㓗풅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadeesNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadeesNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadeesNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1152' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ᘐꎡ響䓈ꊍ哱㶧᪠' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BaabID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BaabID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'BaabID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3405' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'渴猎킿䜪ꬼ劧幂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithArabicText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithArabicText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithArabicText'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3435' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ꠡ怅럦䄴㨩⨮补' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithUrduText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithUrduText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithUrduText'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'5775' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ꇈﹰ熖䟺ﲽ㈲핲㻗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithHashiaText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithHashiaText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHashiaText'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ᮢ녺쓈䶼㈟㺎' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithTypeAtraaf' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithTypeAtraaf' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeAtraaf'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ಹ᷺䫝ꮀ뭼ꦒ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithTypeRawaat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithTypeRawaat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeRawaat'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'量쓻䟪颓椢㐐ᬧ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithTypeQFT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithTypeQFT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithTypeQFT'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㯏挥錫䉾᎙应紣鑕' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithHukamAjmali' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithHukamAjmali' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamAjmali'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'骱啼㪅䮹쇈肛' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithHukamTafseeli' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithHukamTafseeli' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeli'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2496' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N' ཱ｟䯒ֲ ﶈĜ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithMouzuhArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithMouzuhArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'愑웎䍶㶝씓勪겟' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithMouzuhUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithMouzuhUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithMouzuhUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'桨╔ᨋ事ꖈ巷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithHukamTafseeliArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithHukamTafseeliArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith', @level2type=N'COLUMN',@level2name=N'HadithHukamTafseeliArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontHeight', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontItalic', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontName', @value=N'Microsoft Uighur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontUnderline', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetFontWeight', @value=N'400' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeColor', @value=N'33554432' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeColor12', @value=N'33554432' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/26/2013 1:32:57 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/30/2013 12:42:02 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Ahadith_Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'72' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'RowHeight', @value=N'780' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'TabularCharSet', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'TabularFamily', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ahadith'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䒗쩎䄅ㆆ씳兇' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithBookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithBookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'HadithBooksName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1944' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'氖ᠵ駴䑈費溨읏膀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithBookName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithBookName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'HadithBooksName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName', @level2type=N'COLUMN',@level2name=N'HadithBookName'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'95' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/25/2013 6:53:00 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/30/2013 12:42:02 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithBooksName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HadithBooksName'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'615' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'詾莧꫒䰰枈櫝⹑涣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1188' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쳐䞇⤄䩩ྒྷ衷ଲ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HiddenID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HiddenID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'HiddenID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'792' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N' 陵䩅皉鎐骳栓' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IDPK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IDPK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'IDPK'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1032' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'菲⚣褰䖼㊘쬊͢Ⴇ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2748' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㔝뚉䧏앐๥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitaabNameUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'kitaabNameUrdu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameUrdu'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3768' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'₹㋕Ώ䧬㺠ᘣऍ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'kitaabNameArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'kitaabNameArabic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab', @level2type=N'COLUMN',@level2name=N'kitaabNameArabic'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/25/2013 7:51:09 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/30/2013 12:42:02 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Filter', @value=N'([Kutab].[BookID]=3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'[Kutab].[BookID], [Kutab].[IDPK]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Kutab' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'151' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kutab'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'뷩䙵㠁䯹힬젇䧿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'廍࿭愿下힢棧晙虍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithIDPresent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithIDPresent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'錺裛䯱骗娴扞蠯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HadithIDTakhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HadithIDTakhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'HadithIDTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'퉊m䩳䬞쒩ᱹꑪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookIDPresent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookIDPresent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNamePresent'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'둮蝀径䑣೽䃳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookIDTakhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookIDTakhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'BookNameTakhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'炨訚틻䫶䆡恙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'True/False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'availability' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'availability' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej', @level2type=N'COLUMN',@level2name=N'availability'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'10/18/2013 9:33:06 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'10/18/2013 9:37:32 AM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Takhreej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ReadOnlyWhenDisconnected', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'5213' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Takhreej'
GO
USE [master]
GO
ALTER DATABASE [Mohaddis] SET  READ_WRITE 
GO
