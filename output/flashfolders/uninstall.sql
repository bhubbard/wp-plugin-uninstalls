-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FLASHFOLDERS_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('menu_order', '_flashfolder_file_version', '_wp_attachment_image_alt', '_mm_usage_cache');
DELETE FROM wp_usermeta WHERE meta_key IN ('menu_order', '_flashfolder_file_version', '_wp_attachment_image_alt', '_mm_usage_cache');
DELETE FROM wp_termmeta WHERE meta_key IN ('menu_order', '_flashfolder_file_version', '_wp_attachment_image_alt', '_mm_usage_cache');
DELETE FROM wp_commentmeta WHERE meta_key IN ('menu_order', '_flashfolder_file_version', '_wp_attachment_image_alt', '_mm_usage_cache');

