-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynpicwatermark_default_position', 'dynpicwatermark_force_default_position', 'dynpicwatermark_size_type', 'dynpicwatermark_size_value', 'dynpicwatermark_watermark_file', 'dynpicwatermark_mark_any_image', 'dynpicwatermark_memory_limit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

