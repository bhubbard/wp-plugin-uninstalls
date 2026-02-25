-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('watermark_manager_options', 'watermark_manager_image_watermark_options', 'watermark_manager_image_settings', 'watermark_manager_logging_enabled', 'WATERMARK_MANAGER_VERSION', 'watermark_manager_content_watermark_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_watermark_manager_watermarked', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_watermark_manager_watermarked', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_watermark_manager_watermarked', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_watermark_manager_watermarked', '_wp_attachment_metadata');

