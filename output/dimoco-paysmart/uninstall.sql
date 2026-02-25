-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dimoco_payment_credentials', 'woocommerce_dimoco_settings');

