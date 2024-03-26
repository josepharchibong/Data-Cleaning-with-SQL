-- Changing the Data Type for some colums
BEGIN TRANSACTION;

ALTER TABLE dbo.food_choices
    ALTER COLUMN Gender nvarchar(10);

ALTER TABLE dbo.food_choices
    ALTER COLUMN breakfast nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN calorie_per_day nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN coffee_picture nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN comfort_food_reasons_short nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN cooking_frequency nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN cuisine nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN current_diet_short nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN drink_picture nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN eating_changes_short nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN eating_out nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN employment_status nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN ethnic_food nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN exercise nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN father_education_level nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN fav_cuisine_grouped nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN fav_food nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN fries_picture nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN fruit_per_day nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN grade_level nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN do_you_feel_healthy nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN ideal_diet_short nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN income nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN indian_food nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN italian_food nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN is_life_rewarding nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN marital_status nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN mother_education_level nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN nutritional_check nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN residence nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN parents_cook nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN pay_for_meal_out nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN persian_food nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN self_perception_weight nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN soup_picture nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN sports nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN thai_food nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN veggies_per_day nvarchar(50);

ALTER TABLE dbo.food_choices
    ALTER COLUMN vitamins nvarchar(50);

COMMIT;
