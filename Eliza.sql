SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE Eliza @message nvarchar(256)=NULL
/*
ELIZA--A Computer Program For the Study of Natural Language Communication Between Man and Machine
Joseph Weizenbaum 
Massachusetts Institute of Technology 
Department of Electrical Engineering 
Cambridge, Mass.. 
Communications of the ACM Volume 9, Number 1 (January 1966): 36-35.
Translated to TSQL by Joseph Gama
*/
AS
SET NOCOUNT ON
DECLARE @intKey int, @intKeyPos int,@intConjPos int,@ConjTMP nvarchar(10), @conj  nvarchar(256), @conj2  nvarchar(256),
@response  nvarchar(256), @KeyIndex int, @i int, @left  nvarchar(256), @right  nvarchar(256), @intConjPos2 int,
@ConjTMP2 nvarchar(10), @tmp nvarchar(10),@tmp2 nvarchar(10), @loc1 int, @loc2 int, @flag bit
IF @message IS NULL
	SET @message=''--turn NULL input into empty string
--remove possible punctuation
SET @message=REPLACE(@message, '.', '')
SET @message=REPLACE(@message, ',', '')
SET @message=REPLACE(@message, ':', '')
SET @message=REPLACE(@message, ';', '')
SET @message=REPLACE(@message, '!', '')
SET @message=REPLACE(@message, '?', '')
WHILE CHARINDEX('  ', @message)>0
	SET @message=REPLACE(@message, '  ', ' ')--remove extra spacing
SET @message=RTRIM(LTRIM(@message))--clean it up
SET @message=UPPER(@message)--turn to upper case
IF OBJECT_ID('tempdb..##ElizaInput') IS NULL--First call to stored procedure
	BEGIN
	CREATE TABLE ##ElizaInput (message nvarchar(128))--create temporary table
	UPDATE RspIndex SET counter=Kindex FROM RspIndex INNER JOIN KeyIndex ON KeyIndex.pk=RspIndex.pk--reset response index
	INSERT ##ElizaInput(message) VALUES ('')--insert one empty value into temporary table
	IF  @message=''--show greeting for empty input
		BEGIN
		PRINT'Hi! I''m Eliza. I am your personal therapy computer.'
		PRINT'Please tell me your problem.'
		GOTO lblExit
		END
	END
IF @message=''--deal with empty input
	BEGIN
	PRINT CASE DATEPART ( millisecond , GETDATE() )  % 4 WHEN 0 THEN 'Yes?' WHEN 1 THEN 'I am listening.' WHEN 2 THEN 'Hello?' ELSE 'Talk to me.' END
	UPDATE ##ElizaInput SET message=''--keep track of input
	GOTO lblExit
	END
IF @message IN (N'EXIT', N'STOP', N'QUIT', N'HALT', N'BYE', N'BYE BYE', N'GOODBYE', N'SHUT')--if the user wants to clear the temporary table, that is to say good bye
	BEGIN
	IF CHARINDEX('SHUT', UPPER(@message))>0
		PRINT'O.K. IF YOU FEEL THAT WAY I''LL SHUT UP...'
	ELSE	
		PRINT'BYE BYE.'
	DROP TABLE ##ElizaInput --drop temporary table
	GOTO lblExit
	END
IF CHARINDEX(N'HI', @message)=1 OR  CHARINDEX(N'HEY', @message)=1 OR  CHARINDEX(N'HELLO', @message)=1 OR  CHARINDEX(N'HOWDY', @message)=1 OR 
 CHARINDEX(N'WASSUP', @message)=1 OR  CHARINDEX(N'GREETINGS', @message)=1 OR  CHARINDEX(N'WHAT''S UP', @message)=1
	BEGIN
	PRINT CASE DATEPART ( millisecond , GETDATE() )  % 3 WHEN 0 THEN 'HELLO, WHAT IS IN YOUR MIND?' WHEN 1 THEN 'HELLO, HOW ARE YOU FEELING?' ELSE 'HELLO, WHAT IS TROUBLING YOU?' END
	GOTO lblExit
	END

SET @intKey=36--unknown keywords, default
IF  @message = (SELECT  message FROM ##ElizaInput)--is it the same input as the previous one?
	SET @intKey=37--if so, warn user
ELSE
	BEGIN
	--Find keyword
	SELECT TOP 1 @intKey=pk FROM keywords WHERE CHARINDEX(word, @message)>0 ORDER BY pk
	--try to conjugate the string
	SET @conj2=' '+@message+' '--add working spaces
	--conjugations 1
	SET @conj2=REPLACE(@conj2, ' AM ', ' !ARE ')
	SET @conj2=REPLACE(@conj2, ' WAS ', ' !WE''RE ')
	SET @conj2=REPLACE(@conj2, ' I ', ' !YOU ')
	SET @conj2=REPLACE(@conj2, ' MY ', ' !YOUR ')
	SET @conj2=REPLACE(@conj2, ' YOU''VE ', ' !I''VE ')
	SET @conj2=REPLACE(@conj2, ' YOU''RE ', ' !ME ')
	--conjugations 2
	SET @conj2=REPLACE(@conj2, ' ARE ', ' !AM ')
	SET @conj2=REPLACE(@conj2, ' WE''RE ', ' !WAS ')
	SET @conj2=REPLACE(@conj2, ' YOU ', ' !I ')
	SET @conj2=REPLACE(@conj2, ' YOUR ', ' !MY ')
	SET @conj2=REPLACE(@conj2, ' I''VE ', ' !YOU''VE ')
	SET @conj2=REPLACE(@conj2, ' I''M ', ' !YOU''RE ')
	SET @conj2=REPLACE(@conj2, ' ME ', ' !YOU ')

		SET @conj2=REPLACE(@conj2, '!', '')--clean up the conjugated string
		SET @conj2=RTRIM(LTRIM(@conj2))
		IF RIGHT(@conj2,2)=' I'
			SET @conj2=LEFT(@conj2, LEN(@conj2)-1)+'ME'
	END
--Get response based on Keyword found
 SELECT @KeyIndex=KIndex FROM KeyIndex WHERE pk=@intKey--skip down to the desired response
 SELECT @i=counter FROM RspIndex WHERE pk=@intKey--check current response index
SET @i=@i+1--Point to the next response so that no two are the same
IF (@i>(SELECT KIndex FROM KeyEnd WHERE pk=@intKey))--the response index rotates through the list of answers
	SET @i=@KeyIndex
UPDATE RspIndex SET counter=@i WHERE pk=@intKey--store response index
SELECT @response=word FROM response WHERE pk=@i--get response
/*
if no "*" or "@" at the end of the response, then just return the response
if there was an "*" at the end of the response string, then return the response plus the conjugation word/phrase plus a "?"
if "@" then add a period instead
*/
IF RIGHT(@response,1)='*'
	SET @response=LEFT(@response, LEN(@response)-1)+' '+@conj2+'?'
IF RIGHT(@response,1)='@'
	SET @response=LEFT(@response, LEN(@response)-1)+' '+@conj2+'.'
PRINT upper(left(@response, 1))+lower(right(@response, LEN(@response)-1))--Print the response with first character upper case and the remaining lower case
UPDATE ##ElizaInput SET message=@message--update message from user
lblExit:
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

