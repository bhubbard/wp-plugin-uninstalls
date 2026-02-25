-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lh_copy_from_url-original_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lh_copy_from_url-original_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lh_copy_from_url-original_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lh_copy_from_url-original_file');

