-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gantry5_plugin');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_edit_last');

