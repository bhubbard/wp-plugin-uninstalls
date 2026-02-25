-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_postcode_order_restriction_enabled', 'woocommerce_restrict_gateways_placeorder', 'woocommerce_postcode_order', 'woocommerce_allow_restrict', 'woocommerce_restrict_option', 'woocommerce_specific_allowed_gateways', 'woocommerce_error_gateways', 'woocommerce_error_placeorder');

