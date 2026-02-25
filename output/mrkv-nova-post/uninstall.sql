-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrkv_nova_api_token', 'mrkv_nova_api_server', 'mrkv_nova_delivery', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');

