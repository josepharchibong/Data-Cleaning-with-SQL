-- 1. Cleaning columns with 'none', 'nan' & 'Nun', etc
-- 'SELECT' statements to identify the rows with the inconsistent data
SELECT comfort_food --replace with null
FROM dbo.food_choices
WHERE comfort_food IN ('none', 'nan')
;
SELECT comfort_food_reasons --replace with no reason
FROM dbo.food_choices
WHERE comfort_food_reasons IN ('none', 'nan')
;
SELECT current_diet --replace with null
FROM dbo.food_choices
WHERE current_diet IN ('none', 'nan')
;
SELECT comfort_food --replace with null
FROM dbo.food_choices
WHERE comfort_food IN ('none', 'nan')
;
SELECT eating_changes --replace with null
FROM dbo.food_choices
WHERE eating_changes IN ('none', 'nan', 'Nun')
;
SELECT father_profession --replace with null
FROM dbo.food_choices
WHERE father_profession IN ('nan')
;
SELECT fav_cuisine --replace with null
FROM dbo.food_choices
WHERE fav_cuisine IN ('nan')
;
SELECT fav_childhood_food --replace with null
FROM dbo.food_choices
WHERE fav_childhood_food IN ('nan')
;
SELECT healthy_meal --replace with null
FROM dbo.food_choices
WHERE healthy_meal IN ('nan')
;
SELECT ideal_diet --replace with null
FROM dbo.food_choices
WHERE ideal_diet IN ('no, diet', 'nan')
;
SELECT dinner_for_friend --replace with null
FROM dbo.food_choices
WHERE dinner_for_friend IN ('nan')
;
SELECT mother_profession --replace with Unemployed
FROM dbo.food_choices
WHERE mother_profession IN ('none', 'nan', 'nothing')
;
SELECT sport_type --replace with null
FROM dbo.food_choices
WHERE	sport_type LIKE '%non%' OR
		sport_type LIKE '%nan%' OR
		sport_type LIKE '%no %'
;

--------------------------------------------------------
--'UPDATE' query to fix all the issues
BEGIN TRANSACTION;

UPDATE dbo.food_choices  --replace with null
SET comfort_food = NULL
WHERE comfort_food IN ('none', 'nan')
;
UPDATE dbo.food_choices  --replace with no reason
SET comfort_food_reasons = 'No reason'
WHERE comfort_food_reasons IN ('none', 'nan')
;
UPDATE dbo.food_choices --replace with null
SET current_diet = NULL
WHERE current_diet IN ('none', 'nan')
;
UPDATE dbo.food_choices --replace with null
SET comfort_food = NULL
WHERE comfort_food IN ('none', 'nan')
;
UPDATE dbo.food_choices --replace with null
SET eating_changes = NULL
WHERE eating_changes IN ('none', 'nan', 'Nun')
;
UPDATE dbo.food_choices  --replace with null
SET father_profession = NULL
WHERE father_profession IN ('nan')
;
UPDATE dbo.food_choices  --replace with null
SET fav_cuisine = NULL
WHERE fav_cuisine IN ('nan')
;
UPDATE dbo.food_choices--replace with null
SET fav_childhood_food = NULL
WHERE fav_childhood_food IN ('nan')
;
UPDATE dbo.food_choices --replace with null
SET healthy_meal = NULL
WHERE healthy_meal IN ('nan')
;
UPDATE dbo.food_choices  --replace with null
SET ideal_diet = NULL
WHERE ideal_diet IN ('no, diet', 'nan')
;
UPDATE dbo.food_choices --replace with null
SET dinner_for_friend = NULL
WHERE dinner_for_friend IN ('nan')
;
UPDATE dbo.food_choices  --replace with Unemployed
SET mother_profession = 'Unemployed'
WHERE mother_profession IN ('none', 'nan', 'nothing')
;
UPDATE dbo.food_choices --replace with null
SET sport_type = NULL
WHERE	sport_type LIKE '%non%' OR
		sport_type LIKE '%nan%' OR
		sport_type LIKE '%no %'
;
COMMIT;


----------------------------------------------------------
----------------------------------------------------------
-- 2. Replacing NULL values by cross-referencing
-- 'SELECT' statements to identify the rows with the inconsistent data
SELECT sports, sport_type
FROM dbo.food_choices
WHERE sports IS NULL
;
SELECT comfort_food_reasons_short, comfort_food_reasons_coded1
FROM dbo.food_choices
WHERE comfort_food_reasons_short IS NULL
;

--------------------------------------------------------
--'UPDATE' query to fix all the issues
UPDATE dbo.food_choices
SET sports = CASE 
				WHEN sports IS NULL THEN 1 
                ELSE sports
			 END
;

UPDATE dbo.food_choices
SET comfort_food_reasons_short = COALESCE(comfort_food_reasons_short, comfort_food_reasons_coded1)