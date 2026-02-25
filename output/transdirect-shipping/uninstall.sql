-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'cached_api_data', 'quote_id', 'td_api_response', 'td_sync_api_response', 'timeout_for_30_min');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_company', '_price', 'synced', '_sku', '_weight', '_height', '_width', '_length', '_wc_shipping/namespace/shipping-type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_company', '_price', 'synced', '_sku', '_weight', '_height', '_width', '_length', '_wc_shipping/namespace/shipping-type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_company', '_price', 'synced', '_sku', '_weight', '_height', '_width', '_length', '_wc_shipping/namespace/shipping-type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_company', '_price', 'synced', '_sku', '_weight', '_height', '_width', '_length', '_wc_shipping/namespace/shipping-type');

