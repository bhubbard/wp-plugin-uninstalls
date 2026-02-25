-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_remote_api_key', 'update_plugins', 'update_plugins');

