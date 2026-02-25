-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccfw_communes', 'ccfw_api_info', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

