-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_smsa-express-integration_settings', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rts_smsa_awb_no', '_shipping_phone', 'smsa_awb_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('rts_smsa_awb_no', '_shipping_phone', 'smsa_awb_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('rts_smsa_awb_no', '_shipping_phone', 'smsa_awb_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rts_smsa_awb_no', '_shipping_phone', 'smsa_awb_no');

