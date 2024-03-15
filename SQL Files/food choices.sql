SELECT * FROM dbo.food_choices
;

------------------  CLEANING THE DATA  ------------------
-- Renaming Columns
EXEC sp_rename 'dbo.food_choices.calories_chicken' , 'guess_chicken_calories' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.calories_day' , 'calorie_per_day' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.calories_scone' , 'guess_scone_calories' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.coffee' , 'coffee_picture' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.comfort_food_reasons_coded' , 'comfort_food_reasons_short' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.cook' , 'cooking_frequency' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.diet_current' , 'current_diet' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.diet_current_coded' , 'current_diet_short' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.drink' , 'drink_picture' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.eating_changes_coded' , 'eating_changes_short' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.employment' , 'employment_status' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.father_education' , 'father_education_level' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.fav_cuisine_coded' , 'fav_cuisine_grouped' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.food_childhood' , 'fav_childhood_food' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.fries' , 'fries_picture' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.fruit_day' , 'fruit_per_day' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.healthy_feeling' , 'do_you_feel_healthy' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.ideal_diet_coded' , 'ideal_diet_short' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.life_rewarding' , 'is_life_rewarding' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.meals_dinner_friend' , 'dinner_for_friend' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.mother_education' , 'mother_education_level' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.on_off_campus' , 'residence' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.pay_meal_out' , 'pay_for_meal_out' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.soup' , 'soup_picture' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.tortilla_calories' , 'guess_tortilla_calories' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.turkey_calories' , 'guess_turkey_calories' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.type_sports' , 'sport_type' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.veggies_day' , 'veggies_per_day' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.waffle_calories' , 'guess_waffle_calories' , 'COLUMN';
EXEC sp_rename 'dbo.food_choices.weight' , 'weight_pounds' , 'COLUMN';
;
