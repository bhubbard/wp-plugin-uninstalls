-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ufg_current_version', 'ufg_last_version');
DELETE FROM wp_options WHERE option_name LIKE 'ufg_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'ufg_filters_%';
DELETE FROM wp_options WHERE option_name LIKE 'ufg_gallery_%';
DELETE FROM wp_options WHERE option_name LIKE 'ufg_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

