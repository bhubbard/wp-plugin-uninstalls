-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imsanity_resume_id', 'imsanity_version', 'imsanity_max_width', 'imsanity_max_height', 'imsanity_max_width_library', 'imsanity_max_height_library', 'imsanity_max_width_other', 'imsanity_max_height_other', 'imsanity_bmp_to_jpg', 'imsanity_png_to_jpg', 'imsanity_quality', 'imsanity_avif_quality', 'imsanity_webp_quality', 'imsanity_delete_originals', 'dirsize_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

