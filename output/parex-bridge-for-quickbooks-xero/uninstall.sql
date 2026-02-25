-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_api_enabled', 'wp_pxb_user', 'wp_pxb_module', 'woocommerce_store_city', 'woocommerce_store_address', 'wp_pxb_old_user', 'pxb_verificaitonEmail_status', 'wp_pxb_secret', 'woocommerce_default_country');

