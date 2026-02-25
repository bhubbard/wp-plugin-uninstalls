-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eabi_telia_mtasku_test_allowed', 'woocommerce_currency');

