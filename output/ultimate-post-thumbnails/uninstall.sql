-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upt_options', 'upt', 'medium_large_size_w', 'medium_large_size_h', 'upt_version');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt');

