-- Checking for duplicate rows
WITH RowNumCTE as
(
	SELECT	ROW_NUMBER() OVER (
			PARTITION BY comfort_food, current_diet, father_profession
			ORDER BY comfort_food
			) as row_num, *
	FROM dbo.food_choices
)
SELECT *
FROM RowNumCTE
WHERE row_num > 1
;
