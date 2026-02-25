-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_samedaycourier_settings', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_samedaycourier_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sameday_shipping_open_package_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sameday_shipping_open_package_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sameday_shipping_open_package_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sameday_shipping_open_package_option');

