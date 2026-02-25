-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pubjet_cron_cleanup_done', 'pubjet_migration_delete_first_image_v530', 'pubjet_debug_mode', 'triboon_token', 'triboon_default_category', 'triboon_debug_mode', 'pubjet_daily_plugin_status_check', 'pubjet_reportage_count', 'pubjet_register_cron_lock', 'update_plugins', 'pubjet_update_plugin_info');
DELETE FROM wp_options WHERE option_name LIKE 'pubjet_permanent_hide_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'pubjet_remind_admin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pubjet_meta_title', 'pubjet_meta_description', 'pubjet_use_cdn', '_wp_attachment_image_alt', 'pubjet_thumbnail_data_attach');
DELETE FROM wp_usermeta WHERE meta_key IN ('pubjet_meta_title', 'pubjet_meta_description', 'pubjet_use_cdn', '_wp_attachment_image_alt', 'pubjet_thumbnail_data_attach');
DELETE FROM wp_termmeta WHERE meta_key IN ('pubjet_meta_title', 'pubjet_meta_description', 'pubjet_use_cdn', '_wp_attachment_image_alt', 'pubjet_thumbnail_data_attach');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pubjet_meta_title', 'pubjet_meta_description', 'pubjet_use_cdn', '_wp_attachment_image_alt', 'pubjet_thumbnail_data_attach');

