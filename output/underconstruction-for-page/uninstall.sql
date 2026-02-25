-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('un_theme1');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hvk_ucfp_meta_box_check');
DELETE FROM wp_usermeta WHERE meta_key IN ('hvk_ucfp_meta_box_check');
DELETE FROM wp_termmeta WHERE meta_key IN ('hvk_ucfp_meta_box_check');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hvk_ucfp_meta_box_check');

