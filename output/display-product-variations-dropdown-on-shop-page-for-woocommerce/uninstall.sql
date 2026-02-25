-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpvdw_enable_setting', 'dpvdw_exclude_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dpvdw_exclude_product_single');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dpvdw_exclude_product_single');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dpvdw_exclude_product_single');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dpvdw_exclude_product_single');

