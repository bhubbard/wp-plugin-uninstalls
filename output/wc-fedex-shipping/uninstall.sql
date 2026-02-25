-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_store_address', 'woocommerce_store_address_2');
DELETE FROM wp_options WHERE option_name LIKE '%_plugins';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_length', '_width', '_height', '_weight');

