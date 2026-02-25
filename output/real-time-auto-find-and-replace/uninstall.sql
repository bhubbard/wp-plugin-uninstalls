-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtafar_plugin_install_date', 'rtafar_db_version', 'rtafar_plugin_version', 'rtafar_settings');
DELETE FROM wp_options WHERE option_name LIKE '%ed_Activated';
DELETE FROM wp_options WHERE option_name LIKE '%ed_Feedback';
DELETE FROM wp_options WHERE option_name LIKE '%ed_Feedback_offPerm';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_backup_sizes', '_wp_attachment_image_alt');

