-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awplife_tbms_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tbms_post_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tbms_post_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tbms_post_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tbms_post_data_%';

