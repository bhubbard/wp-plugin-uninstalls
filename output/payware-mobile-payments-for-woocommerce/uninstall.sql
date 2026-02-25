-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'paywr_create_mobile_page', 'woocommerce_payware-mobile-payments-for-woocommerce_settings');

