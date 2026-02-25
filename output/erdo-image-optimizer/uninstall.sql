-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erdo_auto_sanitize', 'erdo_remove_exif', 'erdo_auto_webp', 'erdo_convert_format', 'erdo_total_saved_bytes', 'erdo_quality');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_erdo_audit_cache', '_erdo_savings_bytes', '_erdo_original_size', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_erdo_audit_cache', '_erdo_savings_bytes', '_erdo_original_size', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_erdo_audit_cache', '_erdo_savings_bytes', '_erdo_original_size', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_erdo_audit_cache', '_erdo_savings_bytes', '_erdo_original_size', '_wp_attachment_image_alt');

