-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'peiwm_enable_admin_download_buttons', 'peiwm_batch_settings', 'peiwm_scheduled_exports', 'sidebars_widgets', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'peiwm_recommendations_data');
DELETE FROM wp_options WHERE option_name LIKE 'peiwm_batch_export_%';
DELETE FROM wp_options WHERE option_name LIKE 'peiwm_batch_export_media_%';
DELETE FROM wp_options WHERE option_name LIKE 'peiwm_batch_import_%';
DELETE FROM wp_options WHERE option_name LIKE 'peiwm_media_batch_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_attached_file', '_wp_page_template');

