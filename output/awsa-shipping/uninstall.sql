-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PW_Options', 'woocommerce_default_country', 'woocommerce_weight_unit', 'dokan_pages', 'awsa_shipping_settings', 'woocommerce_store_city');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_awsa_parcel_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_awsa_parcel_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_awsa_parcel_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_awsa_parcel_code');

