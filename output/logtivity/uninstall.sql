-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logtivity_last_settings_check_in_at', 'logtivity_enable_options_table_logging', 'logtivity_enable_post_meta_logging', 'logtivity_version', 'logtivity_app_verify_url', 'logtivity_activate', 'dismissed-logtivity-site-url-has-changed-notice', 'update_plugins', 'logtivity-welcome-notice');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE 'logtivity_%';

