-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ils_log_chunk_index');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_init_view_count', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_init_view_count', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_init_view_count', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_init_view_count', '_wp_attachment_image_alt');

