-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maakapay_test', 'maakapay_live', 'maakapay_mode', 'maakapay_admin_mail', 'woocommerce_maakapay_for_woocommerce_checkout_settings');

