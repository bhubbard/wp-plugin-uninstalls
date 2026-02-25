-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('firepro_api_key', 'firepro_temp_key', 'firepro_pro_status', 'firepro_api_settings');

