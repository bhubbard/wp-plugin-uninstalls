-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pacs_calculation_type', 'pacs_amount', 'pacs_enable_product_exclusion', 'pacs_enable', 'pacs_label');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_exclude_packing_charge');
DELETE FROM wp_usermeta WHERE meta_key IN ('_exclude_packing_charge');
DELETE FROM wp_termmeta WHERE meta_key IN ('_exclude_packing_charge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_exclude_packing_charge');

