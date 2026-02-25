-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icfw', 'webp_img_converter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webp_img', 'icfw_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('webp_img', 'icfw_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('webp_img', 'icfw_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webp_img', 'icfw_img');

