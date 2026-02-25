-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iaff_settings', 'iaff_bulk_updater_counter', 'abl_iaff_version', 'iaff_activate_image_attributes_pro_plugin_complete', 'iaff_activation_admin_notice', 'iaff_upgrade_complete_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'iaff_wp_attachment_original_post_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'iaff_wp_attachment_original_post_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'iaff_wp_attachment_original_post_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'iaff_wp_attachment_original_post_title');

