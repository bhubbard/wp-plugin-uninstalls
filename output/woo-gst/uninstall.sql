-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gstin_number', 'woocommerce_product_types', 'woocommerce_gst_multi_select_slab', 'woocommerce_gst_single_select_slab', 'woocommerce_tax_classes', 'woocommerce_store_state', 'active_sitewide_plugins', 'wc_gst_telemetry_optin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hsn_prod_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('hsn_prod_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('hsn_prod_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hsn_prod_id');

