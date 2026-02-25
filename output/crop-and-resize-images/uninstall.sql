-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('original_bk_image_url', 'original_image_url', 'original_image_width', 'original_image_height', '_wp_attachment_backup_sizes', 'original_image_path', 'original_bk_image_path', 'original_bk_image_width', 'original_bk_image_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('original_bk_image_url', 'original_image_url', 'original_image_width', 'original_image_height', '_wp_attachment_backup_sizes', 'original_image_path', 'original_bk_image_path', 'original_bk_image_width', 'original_bk_image_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('original_bk_image_url', 'original_image_url', 'original_image_width', 'original_image_height', '_wp_attachment_backup_sizes', 'original_image_path', 'original_bk_image_path', 'original_bk_image_width', 'original_bk_image_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('original_bk_image_url', 'original_image_url', 'original_image_width', 'original_image_height', '_wp_attachment_backup_sizes', 'original_image_path', 'original_bk_image_path', 'original_bk_image_width', 'original_bk_image_height');

