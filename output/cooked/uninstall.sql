-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cooked_version', 'cooked_delicious_recipes_imported', 'cooked_wp_recipe_maker_imported', 'cooked_related_calculation_last', 'cooked_settings', 'cooked_import', 'cooked_import_saved', 'cooked_settings_saved', 'cooked_related_version', 'cooked_settings_version', 'cooked_pro_settings_version', 'cooked_classic_recipes', 'cooked_widget_recipes_list');
DELETE FROM wp_options WHERE option_name LIKE '%_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_recipe_settings', '_thumbnail_id', 'rating', '_recipe_rating', '_recipe_likes', '_recipe_favorites', '_elementor_edit_mode', 'wprm-comment-rating', 'cooked_user_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_recipe_settings', '_thumbnail_id', 'rating', '_recipe_rating', '_recipe_likes', '_recipe_favorites', '_elementor_edit_mode', 'wprm-comment-rating', 'cooked_user_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_recipe_settings', '_thumbnail_id', 'rating', '_recipe_rating', '_recipe_likes', '_recipe_favorites', '_elementor_edit_mode', 'wprm-comment-rating', 'cooked_user_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_recipe_settings', '_thumbnail_id', 'rating', '_recipe_rating', '_recipe_likes', '_recipe_favorites', '_elementor_edit_mode', 'wprm-comment-rating', 'cooked_user_meta');

