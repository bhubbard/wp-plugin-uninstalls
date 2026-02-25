-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bis_disable_big_image_size_threshold', 'bis_disabled_upscaling', 'bis_disabled_sizes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('focal_point', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('focal_point', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('focal_point', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('focal_point', '_wp_attachment_image_alt');

