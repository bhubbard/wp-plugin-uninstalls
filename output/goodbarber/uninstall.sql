-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gb_json_api_controllers', 'gb_api_key', 'gb_json_api_base', 'is_secure_mode_enabled', 'is_comments_enabled');

