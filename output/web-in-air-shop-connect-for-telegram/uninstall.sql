-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wasct_settings', 'wasct_cache_version', 'wasct_show_tags_button', 'wasct_show_brands_button');
DELETE FROM wp_options WHERE option_name LIKE 'wasct_user_context_%';
DELETE FROM wp_options WHERE option_name LIKE 'wasct_panel_msg_%';
DELETE FROM wp_options WHERE option_name LIKE 'wasct_user_lang_%';
DELETE FROM wp_options WHERE option_name LIKE 'wasct_user_state_%';
DELETE FROM wp_options WHERE option_name LIKE 'wasct_variation_selection_%';
DELETE FROM wp_options WHERE option_name LIKE 'wasct_search_%';

