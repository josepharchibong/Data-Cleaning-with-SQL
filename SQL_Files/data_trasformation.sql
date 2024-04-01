-- Select staement to verify the columns to be fixed
SELECT	Gender, breakfast, calorie_per_day, coffee_picture, cooking_frequency, cuisine, 
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
