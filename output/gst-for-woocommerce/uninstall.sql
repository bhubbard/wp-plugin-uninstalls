-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', '_tmd_gst_settingts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tmd_gst', '_tmd_gst_bill', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tmd_gst', '_tmd_gst_bill', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tmd_gst', '_tmd_gst_bill', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tmd_gst', '_tmd_gst_bill', '_price');

