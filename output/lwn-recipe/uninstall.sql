-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lwn_recipe_steps', 'lwn_recipe_ingredients', 'lwn_recipe_notes', 'lwn_recipe_desc', 'lwn_recipe_prep_time', 'lwn_recipe_cook_time', 'lwn_recipe_total_time', 'lwn_recipe_servings', 'lwn_recipe_vegan', 'lwn_recipe_meal');
DELETE FROM wp_usermeta WHERE meta_key IN ('lwn_recipe_steps', 'lwn_recipe_ingredients', 'lwn_recipe_notes', 'lwn_recipe_desc', 'lwn_recipe_prep_time', 'lwn_recipe_cook_time', 'lwn_recipe_total_time', 'lwn_recipe_servings', 'lwn_recipe_vegan', 'lwn_recipe_meal');
DELETE FROM wp_termmeta WHERE meta_key IN ('lwn_recipe_steps', 'lwn_recipe_ingredients', 'lwn_recipe_notes', 'lwn_recipe_desc', 'lwn_recipe_prep_time', 'lwn_recipe_cook_time', 'lwn_recipe_total_time', 'lwn_recipe_servings', 'lwn_recipe_vegan', 'lwn_recipe_meal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lwn_recipe_steps', 'lwn_recipe_ingredients', 'lwn_recipe_notes', 'lwn_recipe_desc', 'lwn_recipe_prep_time', 'lwn_recipe_cook_time', 'lwn_recipe_total_time', 'lwn_recipe_servings', 'lwn_recipe_vegan', 'lwn_recipe_meal');

