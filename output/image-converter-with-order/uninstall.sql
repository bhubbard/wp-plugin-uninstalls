-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_bw_image_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_bw_image_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_bw_image_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_bw_image_enable');

