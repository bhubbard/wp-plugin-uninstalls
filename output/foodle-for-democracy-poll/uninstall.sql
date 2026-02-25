-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foodle_dem_categories', 'foodle_reminders', 'foodle_settings', 'foodle_meta_fields', 'foodle_meta_defaults_sorting', 'foodle_regex_main', 'foodle_special_functions', 'foodle_version', 'foodle_variables', 'foodle_change_demCollectAnsw', 'foodle_email_content', 'foodle_shortcode_usage_update', 'foodle_democracy_post_usage', 'foodle_foodle_post_usage', 'foodle_comments_post_usage', 'foodle_shortcode_usage_error_pages_posts', 'democracy_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('foodle_variables');
DELETE FROM wp_usermeta WHERE meta_key IN ('foodle_variables');
DELETE FROM wp_termmeta WHERE meta_key IN ('foodle_variables');
DELETE FROM wp_commentmeta WHERE meta_key IN ('foodle_variables');

