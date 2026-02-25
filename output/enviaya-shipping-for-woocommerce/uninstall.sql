-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'woocommerce_version', 'woocommerce_enviaya_settings', 'wc_enviaya_shipping_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');

