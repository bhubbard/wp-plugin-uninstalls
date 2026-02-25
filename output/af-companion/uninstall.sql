-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'sidebars_widgets', 'aftc_upgrade_notice_start_time', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'AFTC_importer_data');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'aftc_upgrade_notice_dismiss_temporary_start_time', 'aftc_upgrade_notice_dismiss');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'aftc_upgrade_notice_dismiss_temporary_start_time', 'aftc_upgrade_notice_dismiss');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'aftc_upgrade_notice_dismiss_temporary_start_time', 'aftc_upgrade_notice_dismiss');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'aftc_upgrade_notice_dismiss_temporary_start_time', 'aftc_upgrade_notice_dismiss');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';

