-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide-new-version-monei-notice', 'monei_log_level', 'woocommerce_monei_apple_google_settings', 'woocommerce_monei_bizum_settings', 'woocommerce_monei_settings', 'woocommerce_monei_mbway_settings', 'woocommerce_monei_multibanco_settings', 'woocommerce_monei_paypal_settings', 'monei_debug', 'monei_orderdo', 'monei_pre_authorize', 'monei_test_apikey', 'monei_live_apikey', 'monei_apikey_mode', 'monei_test_accountid', 'monei_live_accountid', 'monei_apikey', 'monei_accountid');

