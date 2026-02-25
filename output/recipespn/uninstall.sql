-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recipespn_options_changed', 'recipespn_options_remove', 'recipespn_recipe_slug', 'recipespn_pages_recipe', 'recipespn_url_main', 'recipespn_redirecting', 'recipespn_just_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('recipespn_child_birthdate', 'recipespn_user_current_login', 'recipespn_user_last_login', 'recipespn_recipe_history', 'recipespn_recipe_periodicity', 'recipespn_recipe_date', 'recipespn_recipe_time', 'recipespn_owners', 'recipespn_ingredients_name', 'recipespn_steps_name', 'recipespn_steps_description', 'recipespn_steps_time', 'recipespn_time', 'recipespn_images', 'recipespn_video_url', 'recipespn_suggestions');
DELETE FROM wp_usermeta WHERE meta_key IN ('recipespn_child_birthdate', 'recipespn_user_current_login', 'recipespn_user_last_login', 'recipespn_recipe_history', 'recipespn_recipe_periodicity', 'recipespn_recipe_date', 'recipespn_recipe_time', 'recipespn_owners', 'recipespn_ingredients_name', 'recipespn_steps_name', 'recipespn_steps_description', 'recipespn_steps_time', 'recipespn_time', 'recipespn_images', 'recipespn_video_url', 'recipespn_suggestions');
DELETE FROM wp_termmeta WHERE meta_key IN ('recipespn_child_birthdate', 'recipespn_user_current_login', 'recipespn_user_last_login', 'recipespn_recipe_history', 'recipespn_recipe_periodicity', 'recipespn_recipe_date', 'recipespn_recipe_time', 'recipespn_owners', 'recipespn_ingredients_name', 'recipespn_steps_name', 'recipespn_steps_description', 'recipespn_steps_time', 'recipespn_time', 'recipespn_images', 'recipespn_video_url', 'recipespn_suggestions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('recipespn_child_birthdate', 'recipespn_user_current_login', 'recipespn_user_last_login', 'recipespn_recipe_history', 'recipespn_recipe_periodicity', 'recipespn_recipe_date', 'recipespn_recipe_time', 'recipespn_owners', 'recipespn_ingredients_name', 'recipespn_steps_name', 'recipespn_steps_description', 'recipespn_steps_time', 'recipespn_time', 'recipespn_images', 'recipespn_video_url', 'recipespn_suggestions');

