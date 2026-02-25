-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obfrwc_server_auth_id', 'obfrwc_server_username', 'obfrwc_server_password', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

