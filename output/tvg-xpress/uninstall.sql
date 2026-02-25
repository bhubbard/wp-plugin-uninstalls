-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tvg_printnode_api_key', 'tvg_api_username', 'tvg_api_key', 'tvg_xgateway_api_key', 'tvg_api_demo', 'tvg_admin_notice', 'tvg_sender_kt', 'tvg_status_update', 'woocommerce_tvg_express_settings', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'tvg_kt', 'tvg_printer', 'tvg_shipping_options', 'tvg_postboxes');
DELETE FROM wp_options WHERE option_name LIKE '%address';
DELETE FROM wp_options WHERE option_name LIKE '%city';
DELETE FROM wp_options WHERE option_name LIKE '%contact';
DELETE FROM wp_options WHERE option_name LIKE '%country_code';
DELETE FROM wp_options WHERE option_name LIKE '%email';
DELETE FROM wp_options WHERE option_name LIKE '%phone';
DELETE FROM wp_options WHERE option_name LIKE '%postcode';
DELETE FROM wp_options WHERE option_name LIKE '%kt';
DELETE FROM wp_options WHERE option_name LIKE '%name';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tvg_error', '_tvg_skip_free_shipping', '_tvg_skip_shipping', 'tvg_postbox_id', 'tvg_method_id', 'shipmentID');
DELETE FROM wp_usermeta WHERE meta_key IN ('tvg_error', '_tvg_skip_free_shipping', '_tvg_skip_shipping', 'tvg_postbox_id', 'tvg_method_id', 'shipmentID');
DELETE FROM wp_termmeta WHERE meta_key IN ('tvg_error', '_tvg_skip_free_shipping', '_tvg_skip_shipping', 'tvg_postbox_id', 'tvg_method_id', 'shipmentID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tvg_error', '_tvg_skip_free_shipping', '_tvg_skip_shipping', 'tvg_postbox_id', 'tvg_method_id', 'shipmentID');

