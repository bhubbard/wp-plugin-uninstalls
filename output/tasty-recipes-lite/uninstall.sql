-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tasty_recipes_ignore_convert_types', 'tasty_recipes_welcome_redirect', 'rewrite_rules', '_simple_recipe_pro', 'tasty_first_activation', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('srp_ratings', 'archive_srp_ratings', '_ratings', 'archive_ratings', 'nutrifox_response', 'nutrifox_error', 'video_url_response', 'video_url_error', '_wp_attachment_metadata', '_tasty_recipe_parents', 'first_name', 'last_name', 'create_ratings', 'wprm_ratings', 'zrp_ratings', 'cookbook_servings_unit', '_simple_recipe_pro_hidenutrition', 'wprm_author_display', 'wprm_parent_post_id', 'wprm_servings_unit', 'wprm_rating', '_thumbnail_id', 'recipe_servings_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('srp_ratings', 'archive_srp_ratings', '_ratings', 'archive_ratings', 'nutrifox_response', 'nutrifox_error', 'video_url_response', 'video_url_error', '_wp_attachment_metadata', '_tasty_recipe_parents', 'first_name', 'last_name', 'create_ratings', 'wprm_ratings', 'zrp_ratings', 'cookbook_servings_unit', '_simple_recipe_pro_hidenutrition', 'wprm_author_display', 'wprm_parent_post_id', 'wprm_servings_unit', 'wprm_rating', '_thumbnail_id', 'recipe_servings_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('srp_ratings', 'archive_srp_ratings', '_ratings', 'archive_ratings', 'nutrifox_response', 'nutrifox_error', 'video_url_response', 'video_url_error', '_wp_attachment_metadata', '_tasty_recipe_parents', 'first_name', 'last_name', 'create_ratings', 'wprm_ratings', 'zrp_ratings', 'cookbook_servings_unit', '_simple_recipe_pro_hidenutrition', 'wprm_author_display', 'wprm_parent_post_id', 'wprm_servings_unit', 'wprm_rating', '_thumbnail_id', 'recipe_servings_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('srp_ratings', 'archive_srp_ratings', '_ratings', 'archive_ratings', 'nutrifox_response', 'nutrifox_error', 'video_url_response', 'video_url_error', '_wp_attachment_metadata', '_tasty_recipe_parents', 'first_name', 'last_name', 'create_ratings', 'wprm_ratings', 'zrp_ratings', 'cookbook_servings_unit', '_simple_recipe_pro_hidenutrition', 'wprm_author_display', 'wprm_parent_post_id', 'wprm_servings_unit', 'wprm_rating', '_thumbnail_id', 'recipe_servings_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tasty_recipes_ignore_convert_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tasty_recipes_ignore_convert_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tasty_recipes_ignore_convert_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tasty_recipes_ignore_convert_%';

