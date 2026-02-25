-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adcovery_last_update_at', 'adcovery_last_update_method', 'adcovery_enabled', 'adcovery_last_error_msg', 'adcovery_website_id', 'adcovery_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'adcovery_%';

