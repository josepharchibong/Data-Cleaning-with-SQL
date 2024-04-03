-- Select staement to verify the columns to be fixed
SELECT	Gender, breakfast, calorie_per_day, coffee_picture, comfort_food_reasons, cooking_frequency, cuisine, 
		current_diet_short, drink_picture, eating_changes_short, eating_out, employment_status, 
		ethnic_food, exercise, father_education_level, fav_cuisine_grouped, fav_food, fries_picture,
		fruit_per_day, grade_level, greek_food, do_you_feel_healthy, ideal_diet_short, income, indian_food,
		italian_food, is_life_rewarding, marital_status, mother_education_level, nutritional_check, residence,
		parents_cook, pay_for_meal_out, persian_food, self_perception_weight, soup_picture, sports, thai_food,
		veggies_per_day, vitamins
FROM dbo.food_choices
;


BEGIN TRANSACTION;

-- Fixing the Gender Column
UPDATE dbo.food_choices
SET Gender = CASE
				WHEN Gender = 1 THEN 'Female'
				WHEN Gender = 2 THEN 'Male'
			END
;
-- Fixing the breakfast Column
UPDATE dbo.food_choices
SET breakfast = CASE
					WHEN breakfast = 1 THEN 'Cereal'
					WHEN breakfast = 2 THEN 'Donut'
				END
;
-- Fixing the calorie_per_day Column
UPDATE dbo.food_choices
SET calorie_per_day = CASE
						WHEN calorie_per_day = 1 THEN 'I dont know many calories I should consume' 
						WHEN calorie_per_day = 2 THEN 'It is not at all important'
						WHEN calorie_per_day = 3 THEN 'It is moderately important'
						WHEN calorie_per_day = 4 THEN 'It is very important'
					END	
;
-- Fixing the coffee_picture Column
UPDATE dbo.food_choices
SET coffee_picture = CASE
						WHEN coffee_picture = 1 THEN 'Creamy Frappuccino' 
						WHEN coffee_picture = 2 THEN 'Espresso '
					END	
;
-- Fixing the comfort_food_reasons Column
UPDATE dbo.food_choices
SET calorie_per_day = CASE
						WHEN comfort_food_reasons = 1 THEN 'Stress' 
						WHEN comfort_food_reasons = 2 THEN 'Boredom'
						WHEN comfort_food_reasons = 3 THEN 'Depression/Sadness'
						WHEN comfort_food_reasons = 4 THEN 'Hunger'
						WHEN comfort_food_reasons = 5 THEN 'Laziness'
						WHEN comfort_food_reasons = 6 THEN 'Cold Weather'
						WHEN comfort_food_reasons = 7 THEN 'Happiness'
						WHEN comfort_food_reasons = 8 THEN 'Watching TV'
						WHEN comfort_food_reasons = 9 THEN 'None'
					END	
;
-- Fixing the cooking_frequency Column
UPDATE dbo.food_choices
SET cooking_frequency = CASE
						WHEN cooking_frequency = 1 THEN 'Every day' 
						WHEN cooking_frequency = 2 THEN 'A couple of times'
						WHEN cooking_frequency = 3 THEN 'Whenever I can'
						WHEN cooking_frequency = 4 THEN 'Only during holidays'
						WHEN cooking_frequency = 5 THEN 'Never'
						ELSE cooking_frequency
					END	
;
-- Fixing the cuisine Column
UPDATE dbo.food_choices
SET cuisine = CASE
						WHEN cuisine = 1 THEN 'American' 
						WHEN cuisine = 2 THEN 'Mexican/Spanish'
						WHEN cuisine = 3 THEN 'Korean/Asian'
						WHEN cuisine = 4 THEN 'Indian'
						WHEN cuisine = 5 THEN 'American inspired international dishes'
						WHEN cuisine = 5 THEN 'Other'
						ELSE cuisine
					END	
;
-- Fixing the current_diet_short Column
UPDATE dbo.food_choices
SET current_diet_short = CASE
						WHEN current_diet_short = 1 THEN 'healthy/balanced/moderated'
						WHEN current_diet_short = 2 THEN 'unhealthy/cheap/too much/random'
						WHEN current_diet_short = 3 THEN 'the same thing over and over'
						WHEN current_diet_short = 4 THEN 'unclear'
						ELSE current_diet_short
					END	
;
-- Fixing the drink_picture Column
UPDATE dbo.food_choices
SET drink_picture = CASE
						WHEN drink_picture = 1 THEN 'Orange Juice' 
						WHEN drink_picture = 2 THEN 'Soda'
						ELSE drink_picture
					END	
;
-- Fixing the eating_changes_short Column
UPDATE dbo.food_choices
SET eating_changes_short = CASE
						WHEN eating_changes_short = 1 THEN 'Worse' 
						WHEN eating_changes_short = 2 THEN 'Better'
						WHEN eating_changes_short = 3 THEN 'The same'
						WHEN eating_changes_short = 4 THEN 'Unclear'
						ELSE eating_changes_short
					END	
;
-- Fixing the eating_out Column
UPDATE dbo.food_choices
SET eating_out = CASE
						WHEN eating_out = 1 THEN 'Never' 
						WHEN eating_out = 2 THEN '1-2 times'
						WHEN eating_out = 3 THEN '2-3 times'
						WHEN eating_out = 4 THEN '3-5 times'
						WHEN eating_out = 5 THEN 'Everyday'
						ELSE eating_out
					END	
;-- Fixing the employment_status Column
UPDATE dbo.food_choices
SET employment_status = CASE
						WHEN employment_status = 1 THEN 'Yes - Full time' 
						WHEN employment_status = 2 THEN 'Yes - Part time'
						WHEN employment_status = 3 THEN 'No'
						WHEN employment_status = 4 THEN 'Other'
						ELSE employment_status
					END	
;
-- Fixing the ethnic_food Column
UPDATE dbo.food_choices
SET ethnic_food = CASE
						WHEN ethnic_food = 1 THEN 'Very Unlikely' 
						WHEN ethnic_food = 2 THEN 'Unlikely'
						WHEN ethnic_food = 3 THEN 'Neutral'
						WHEN ethnic_food = 4 THEN 'Likely'
						WHEN ethnic_food = 5 THEN 'Very Likely'
						ELSE ethnic_food
					END	
;
-- Fixing the exercise Column
UPDATE dbo.food_choices
SET exercise = CASE
						WHEN exercise = 1 THEN 'Everyday' 
						WHEN exercise = 2 THEN '2-3 times'
						WHEN exercise = 3 THEN 'Once'
						WHEN exercise = 4 THEN 'Sometimes'
						WHEN exercise = 5 THEN 'Never'
						ELSE exercise
					END	
;
-- Fixing the father_education_level Column
UPDATE dbo.food_choices
SET father_education_level = CASE
						WHEN father_education_level = 1 THEN 'Below High School' 
						WHEN father_education_level = 2 THEN 'High School degree'
						WHEN father_education_level = 3 THEN 'Some College degree'
						WHEN father_education_level = 4 THEN 'College degree'
						WHEN father_education_level = 5 THEN 'Graduate degree'
						ELSE father_education_level
					END	
;
-- Fixing the fav_cuisine_grouped Column
UPDATE dbo.food_choices
SET fav_cuisine_grouped = CASE
						WHEN fav_cuisine_grouped = 0 THEN 'None'
						WHEN fav_cuisine_grouped = 1 THEN 'Italian/French/Greek'
						WHEN fav_cuisine_grouped = 2 THEN 'Spanish/Mexican'
						WHEN fav_cuisine_grouped = 3 THEN 'Arabic/Turkish'
						WHEN fav_cuisine_grouped = 4 THEN 'Asian/Chinese/Thai/Nepal'
						WHEN fav_cuisine_grouped = 5 THEN 'American'
						WHEN fav_cuisine_grouped = 6 THEN 'African '
						WHEN fav_cuisine_grouped = 7 THEN 'Jamaican'
						WHEN fav_cuisine_grouped = 8 THEN 'Indian'
						ELSE fav_cuisine_grouped
					END	
;
-- Fixing the fav_food Column
UPDATE dbo.food_choices
SET fav_food = CASE
						WHEN fav_food = 1 THEN 'Cooked at home ' 
						WHEN fav_food = 2 THEN 'Store bought '
						WHEN fav_food = 3 THEN 'Both '
						ELSE fav_food
					END	
;
-- Fixing the fries_picture Column
UPDATE dbo.food_choices
SET fries_picture = CASE
						WHEN fries_picture = 1 THEN 'Mcdonald’s fries' 
						WHEN fries_picture = 2 THEN 'Home fries'
						ELSE fries_picture
					END	
;
-- Fixing the fruit_per_day Column
UPDATE dbo.food_choices
SET fruit_per_day = CASE
						WHEN fruit_per_day = 1 THEN 'Very Unlikely' 
						WHEN fruit_per_day = 2 THEN 'Unlikely'
						WHEN fruit_per_day = 3 THEN 'Neutral'
						WHEN fruit_per_day = 4 THEN 'Likely'
						WHEN fruit_per_day = 5 THEN 'Very Likely'
						ELSE fruit_per_day
					END	
;
-- Fixing the grade_level Column
UPDATE dbo.food_choices
SET grade_level = CASE
						WHEN grade_level = 1 THEN 'Freshman ' 
						WHEN grade_level = 2 THEN 'Sophomore '
						WHEN grade_level = 3 THEN 'Junior '
						WHEN grade_level = 4 THEN 'Senior'
						ELSE grade_level
					END	
;
-- Fixing the greek_food Column
UPDATE dbo.food_choices
SET greek_food = CASE
						WHEN greek_food = 1 THEN 'Very Unlikely' 
						WHEN greek_food = 2 THEN 'Unlikely'
						WHEN greek_food = 3 THEN 'Neutral'
						WHEN greek_food = 4 THEN 'Likely'
						WHEN greek_food = 5 THEN 'Very Likely'
						ELSE greek_food
					END	
;