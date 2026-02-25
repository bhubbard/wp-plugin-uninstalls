-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ocr_tesseract_path', 'ocr_resize_percent', 'ocr_language_string');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id');

