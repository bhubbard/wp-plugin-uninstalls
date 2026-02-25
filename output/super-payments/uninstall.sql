-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_superpayments_settings', 'wcsp_product_ingestion_status', 'woocommerce_gateway_order');

