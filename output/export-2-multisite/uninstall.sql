-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('e2wpms_settings', 'e2wpms_error_log', 'update_plugins', 'e2wpms_upgrade_data', 'e2wpms_licence_response', 'e2wpms_temporarily_disable_ssl');

