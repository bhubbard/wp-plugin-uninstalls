-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dengage_cdmp_api_username', 'dengage_cdmp_api_password', 'dengage_cdmp_execution_mode', 'dengage_cdmp_region', 'dengage_cdmp_sdk_script', 'dengage_accessToken');

