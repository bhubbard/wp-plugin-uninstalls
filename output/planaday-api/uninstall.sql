-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('planaday-api-general', 'planaday-api-css', 'planaday-api-payment', 'planaday-api-version', 'paytium_test_api_key', 'paytium_live_api_key', 'paytium_enable_live_key');

