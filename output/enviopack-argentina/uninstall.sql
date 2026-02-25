-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enviopack_branch_office', 'ecom_enviopack_options', 'enviopack_api_key', 'enviopack_api_secret', 'enviopack_packaging_mode', 'enviopack_shipping_mode', 'enviopack_shipping_status', 'enviopack_couriers', 'enviopack_address_id', 'enviopack_gmap_key', 'enviopack_status_on_processed', 'enviopack_debug', 'enviopack_access_token', 'woocommerce_weight_unit');

