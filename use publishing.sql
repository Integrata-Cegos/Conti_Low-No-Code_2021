use publishing
select * from JSON_DATA
DECLARE @data NVARCHAR(4000)
select @data = value from JSON_DATA where col_key = 1
SELECT JSON_VALUE(value, '$.posid_json_array') from string_split(substring(@data, 2, len(@data) - 2), ',')
