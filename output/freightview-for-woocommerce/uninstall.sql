-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_WC_Freightview_default_package_type', 'woocommerce_freightview_settings', 'woocommerce_WC_Freightview_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fv_wc_product_shipping_package', 'freightview_shipment_id', 'freightview_shipment_rate_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fv_wc_product_shipping_package', 'freightview_shipment_id', 'freightview_shipment_rate_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fv_wc_product_shipping_package', 'freightview_shipment_id', 'freightview_shipment_rate_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fv_wc_product_shipping_package', 'freightview_shipment_id', 'freightview_shipment_rate_id');

