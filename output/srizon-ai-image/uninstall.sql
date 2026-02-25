-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_srizon_bg_original_id', '_srizon_bg_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_srizon_bg_original_id', '_srizon_bg_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_srizon_bg_original_id', '_srizon_bg_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_srizon_bg_original_id', '_srizon_bg_processed');

