-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simg_settings', 'simg_bulk_updater_counter', 'simg_version', 'simg_activation_admin_notice', 'simg_upgrade_complete_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simg_wp_attachment_original_post_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simg_wp_attachment_original_post_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simg_wp_attachment_original_post_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simg_wp_attachment_original_post_title');

