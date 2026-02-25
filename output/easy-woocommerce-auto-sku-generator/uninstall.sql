-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glideffxf_data_install', 'skuautoffxf_letters_and_numbers', 'skuautoffxf_auto_number', 'skuautoffxf_auto_prefix', 'skuautoffxf_auto_ID', 'skuautoffxf_previous', 'skuautoffxf_suffix', 'skuautoffxf_number_dop', 'skuautoffxf_variation_separator', 'skuautoffxf_auto_variant', 'skuautoffxf_duplicate_sku', 'skuautoffxf_variation_settings', 'skuautoffxf_format_an', 'my_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

