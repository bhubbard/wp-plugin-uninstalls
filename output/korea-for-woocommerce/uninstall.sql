-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_korea_settings', 'woocommerce_korea_version', 'woocommerce_checkout_phone_field', 'woocommerce_korea', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price');

