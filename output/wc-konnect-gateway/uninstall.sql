-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_konnect_gateway_settings', 'woocommerce_checkout_page_id');

