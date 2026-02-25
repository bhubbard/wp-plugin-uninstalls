-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('picdefense_api_key', 'picdefense_user_ID', 'picdefense_test_connect', 'picdefense_inc_all_imgs', 'picdefense_rescan_images', 'picdefense_submit_domain', 'picdefense_plugin_version', 'picdefense_submit_images', 'picdefense_images_count', 'old_attachment_id_to_delete', 'picdio_cache_clear_message_dismissed', 'dirsize_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_image_alt');

