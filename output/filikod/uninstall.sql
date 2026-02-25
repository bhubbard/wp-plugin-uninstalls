-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filikod_auto_resize_enabled', 'filikod_max_image_width', 'filikod_auto_alt', 'filikod_remove_title', 'filikod_clean_alt_special_chars', 'filikod_flush_rewrite_rules', 'filikod_enabled_file_types', 'filikod_total_saved_bytes', 'filikod_alt_audit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata', 'filikod_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata', 'filikod_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata', 'filikod_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attachment_metadata', 'filikod_');

