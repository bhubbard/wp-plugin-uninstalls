-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_so_position', 'image_so_source_text', 'image_so_only_post', 'image_so_nofollow', 'image_so_version_number');
DELETE FROM wp_options WHERE option_name LIKE 'image_so_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_so_source_name', 'image_so_source_url', 'image_so_source_position', 'image_so_nofollow');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_so_source_name', 'image_so_source_url', 'image_so_source_position', 'image_so_nofollow');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_so_source_name', 'image_so_source_url', 'image_so_source_position', 'image_so_nofollow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_so_source_name', 'image_so_source_url', 'image_so_source_position', 'image_so_nofollow');

