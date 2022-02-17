

CREATE PROCEDURE uspUpdateFilghtPrice
(@AirlinesID INT, @price FLOAT,@traveldate DATETIME)
AS 
BEGIN
	BEGIN TRY
	DECLARE @flightname VARCHAR(50);
		IF @price IS NOT NULL and @AirlinesID IS NOT NULL 
			BEGIN
				SELECT @flightname = AirlinesName FROM dbo.Airlines A WHERE AirlinesID = @AirlinesID;
					IF @flightname IS NOT NULL
						BEGIN
							UPDATE Travel SET price = @price WHERE AirlinesID = @AirlinesID AND  TravelDate = @traveldate;
							RETURN 1
						END
					ELSE
						RETURN -1
			 END
		ELSE
			RETURN -2
	END TRY
	BEGIN CATCH
		RETURN -99
    END CATCH
END