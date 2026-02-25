-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipstation_settings', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

