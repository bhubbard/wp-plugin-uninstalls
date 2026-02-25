-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_city', 'woocommerce_store_company_name', 'woocommerce_default_country', 'woocommerce_store_address_2', 'woocommerce_store_address', 'woocommerce_store_postcode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postnl_barcode', 'barcode_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('postnl_barcode', 'barcode_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('postnl_barcode', 'barcode_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postnl_barcode', 'barcode_type');

