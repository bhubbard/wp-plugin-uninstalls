-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tezropay_checkout_gateway_settings', 'tezropay_wc_checkout_db1', 'woocommerce_checkout_page_id');

