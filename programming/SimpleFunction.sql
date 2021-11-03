-- Eine Simple Demo-Funktion, die eine Koordinate nach einer Himmelsrichtung umsetzt 
--use publishing;
CREATE FUNCTION  GetDirection (@long DECIMAL(9,6)) RETURNS VARCHAR(20) as 
BEGIN
    DECLARE @return_value as varchar(20)
    SET @return_value = 'same'
    if (@long > 0.00 ) SET @return_value = 'east';
    if (@long < 0.00 ) SET @return_value = 'west';

    RETURN @return_value;

END
