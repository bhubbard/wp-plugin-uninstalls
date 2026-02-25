-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpm_xlsx_col_names', 'wpm_xlsx_data', 'wpm_import_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

