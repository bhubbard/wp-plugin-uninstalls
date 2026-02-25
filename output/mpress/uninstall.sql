-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpress-app-logo');
DELETE FROM wp_options WHERE option_name LIKE '%_one_signal_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%_one_signal_rest_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_blog_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_color';
DELETE FROM wp_options WHERE option_name LIKE '%_button_color';
DELETE FROM wp_options WHERE option_name LIKE '%_app_name';
DELETE FROM wp_options WHERE option_name LIKE '%_app_slogan';
DELETE FROM wp_options WHERE option_name LIKE '%_mpress_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%_google_adsense_publisher_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mpress_push_notification');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mpress_push_notification');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mpress_push_notification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mpress_push_notification');

