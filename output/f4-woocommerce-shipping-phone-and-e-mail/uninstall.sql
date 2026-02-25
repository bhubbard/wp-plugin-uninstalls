-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_shipping_field_phone', 'woocommerce_enable_shipping_field_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_phone', '_shipping_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_phone', '_shipping_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_phone', '_shipping_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_phone', '_shipping_email');

