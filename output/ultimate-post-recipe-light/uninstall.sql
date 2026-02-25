-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uprc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_uprc_post_recipe_enabled', '_uprc_post_recipe_image', '_uprc_post_recipe_title', '_uprc_post_recipe_summary', '_uprc_post_recipe_equipment', '_uprc_post_recipe_ingredients', '_uprc_post_recipe_notes', '_uprc_recipe_instructions_group', '_uprc_post_recipe_prep_time', '_uprc_post_recipe_time', '_uprc_post_recipe_servings', '_uprc_post_recipe_total_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_uprc_post_recipe_enabled', '_uprc_post_recipe_image', '_uprc_post_recipe_title', '_uprc_post_recipe_summary', '_uprc_post_recipe_equipment', '_uprc_post_recipe_ingredients', '_uprc_post_recipe_notes', '_uprc_recipe_instructions_group', '_uprc_post_recipe_prep_time', '_uprc_post_recipe_time', '_uprc_post_recipe_servings', '_uprc_post_recipe_total_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_uprc_post_recipe_enabled', '_uprc_post_recipe_image', '_uprc_post_recipe_title', '_uprc_post_recipe_summary', '_uprc_post_recipe_equipment', '_uprc_post_recipe_ingredients', '_uprc_post_recipe_notes', '_uprc_recipe_instructions_group', '_uprc_post_recipe_prep_time', '_uprc_post_recipe_time', '_uprc_post_recipe_servings', '_uprc_post_recipe_total_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_uprc_post_recipe_enabled', '_uprc_post_recipe_image', '_uprc_post_recipe_title', '_uprc_post_recipe_summary', '_uprc_post_recipe_equipment', '_uprc_post_recipe_ingredients', '_uprc_post_recipe_notes', '_uprc_recipe_instructions_group', '_uprc_post_recipe_prep_time', '_uprc_post_recipe_time', '_uprc_post_recipe_servings', '_uprc_post_recipe_total_time');

