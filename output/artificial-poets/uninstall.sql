-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('artificial_poets_2025_01_api_key', 'artificial_poets_2025_01_cached_credits', 'artificial_poets_2025_01_last_check_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id');

