-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easync_car', 'easync_car_features_group', 'sync_car_specialrequest_group', 'sync_restau', 'easync_hotel', 'sync_room_images_group', 'sync_customdata_group', 'sync_specialrequest_group', 'sync_restau_table', 'sync_table_images_group');
DELETE FROM wp_usermeta WHERE meta_key IN ('easync_car', 'easync_car_features_group', 'sync_car_specialrequest_group', 'sync_restau', 'easync_hotel', 'sync_room_images_group', 'sync_customdata_group', 'sync_specialrequest_group', 'sync_restau_table', 'sync_table_images_group');
DELETE FROM wp_termmeta WHERE meta_key IN ('easync_car', 'easync_car_features_group', 'sync_car_specialrequest_group', 'sync_restau', 'easync_hotel', 'sync_room_images_group', 'sync_customdata_group', 'sync_specialrequest_group', 'sync_restau_table', 'sync_table_images_group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easync_car', 'easync_car_features_group', 'sync_car_specialrequest_group', 'sync_restau', 'easync_hotel', 'sync_room_images_group', 'sync_customdata_group', 'sync_specialrequest_group', 'sync_restau_table', 'sync_table_images_group');

