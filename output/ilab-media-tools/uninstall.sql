-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcloud-network-mode', 'mcloud_task_table_db_version', 'mcloud_task_data_db_version', 'mcloud_task_schedule_db_version', 'mcloud_task_token_db_version', 'mcloud_last_cron', 'mcloud-tasks-heartbeat-frequency', 'mcloud_last_heartbeat', 'mcloud_connection_test', 'ilab-imgix-presets', 'ilab-imgix-size-presets', 'mcloud-image-privacy', 'ilab_s3_import_current', 'ilab_s3_import_current_file', 'ilab-backblaze-settings-error', 'ilab_media_cloud_b2_auth_cache', 'ilab-bunnycdn-settings-error', 'mcloud-storage-supabase-settings-error', 'mcloud-other-plugins-did-migrate', 'as3cf_schema_version', 'mcloud-other-plugins-migrated', 'wp-stateless-current-version', 'leopard_schema_version', 'sm_key_json', 'sm_bucket', 'sm_mode', 'sm_custom_domain', 'sm_root_dir', 'sm_cache_control', 'tantan_wordpress_s3', 'nou_leopard_offload_media', 'nou_leopard_offload_media_connection_bucket_selected_select', 'nou_leopard_offload_media_bucket_folder_main', 'nou_leopard_offload_media_remove_from_server_checkbox', 'nou_leopard_offload_media_cname', 'mcloud-has-run', 'mcloud-pinned-tools', 'ilab_media_cloud_hide_upgrade_bug', 'mcloud_show_wizard', 'mcloud_mux_assets_db_version', 'mcloud_mux_playback_db_version', 'mcloud_mux_renditions_db_version', 'mcloud_logging_table_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period');
DELETE FROM wp_options WHERE option_name IN ('update_plugins', 'update_themes', '_fs_api_connection_retry_counter');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE 'settings_changed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', 'ilab_s3_info', '_wp_attached_file', '_mcloud_optimize_stats', 'sm_cloud', '_nou_leopard_wom_amazonS3_info', 'amazonS3_info', 'mux_filmstrip', '_captions', '_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', 'ilab_s3_info', '_wp_attached_file', '_mcloud_optimize_stats', 'sm_cloud', '_nou_leopard_wom_amazonS3_info', 'amazonS3_info', 'mux_filmstrip', '_captions', '_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', 'ilab_s3_info', '_wp_attached_file', '_mcloud_optimize_stats', 'sm_cloud', '_nou_leopard_wom_amazonS3_info', 'amazonS3_info', 'mux_filmstrip', '_captions', '_thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', 'ilab_s3_info', '_wp_attached_file', '_mcloud_optimize_stats', 'sm_cloud', '_nou_leopard_wom_amazonS3_info', 'amazonS3_info', 'mux_filmstrip', '_captions', '_thumbnail_id', '_wp_attachment_image_alt');

