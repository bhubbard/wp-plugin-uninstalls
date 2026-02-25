-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcfp_api_key', 'wcfp_test_ip_address', 'wcfp_pricing_api_url', 'wcfp_pricing_refresh_interval', 'wcfp_test_connection_result');

