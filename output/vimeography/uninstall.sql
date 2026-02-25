-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vimeography_corrupt_keys_found', 'vimeography_activation_keys', 'vimeography_pro_db_version', 'vimeography_default_settings', 'vimeography_pro_access_token', 'vimeography_access_token', 'vimeography_db_version', 'rewrite_rules', 'update_plugins', '_vimeography_welcome_screen_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_response';

