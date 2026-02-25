-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webp_images_compatibility_notice', 'webp-images-pro_license_key', 'webp-images-pro_last_license_check', 'webp_images_quality', 'webp_images_auto_convert', 'webp_images_version', 'webp_images_installation_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', 'webp_src');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', 'webp_src');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', 'webp_src');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', 'webp_src');

