-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('images_to_webp_settings', 'active_images_to_webp', 'images_to_webp_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('avif_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('avif_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('avif_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('avif_notice_dismissed');

