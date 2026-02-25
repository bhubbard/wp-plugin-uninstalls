#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcloud-network-mode'
wp option delete 'mcloud_task_table_db_version'
wp option delete 'mcloud_task_data_db_version'
wp option delete 'mcloud_task_schedule_db_version'
wp option delete 'mcloud_task_token_db_version'
wp option delete 'mcloud_last_cron'
wp option delete 'mcloud-tasks-heartbeat-frequency'
wp option delete 'mcloud_last_heartbeat'
wp option delete 'mcloud_connection_test'
wp option delete 'ilab-imgix-presets'
wp option delete 'ilab-imgix-size-presets'
wp option delete 'mcloud-image-privacy'
wp option delete 'ilab_s3_import_current'
wp option delete 'ilab_s3_import_current_file'
wp option delete 'ilab-backblaze-settings-error'
wp option delete 'ilab_media_cloud_b2_auth_cache'
wp option delete 'ilab-bunnycdn-settings-error'
wp option delete 'mcloud-storage-supabase-settings-error'
wp option delete 'mcloud-other-plugins-did-migrate'
wp option delete 'as3cf_schema_version'
wp option delete 'mcloud-other-plugins-migrated'
wp option delete 'wp-stateless-current-version'
wp option delete 'leopard_schema_version'
wp option delete 'sm_key_json'
wp option delete 'sm_bucket'
wp option delete 'sm_mode'
wp option delete 'sm_custom_domain'
wp option delete 'sm_root_dir'
wp option delete 'sm_cache_control'
wp option delete 'tantan_wordpress_s3'
wp option delete 'nou_leopard_offload_media'
wp option delete 'nou_leopard_offload_media_connection_bucket_selected_select'
wp option delete 'nou_leopard_offload_media_bucket_folder_main'
wp option delete 'nou_leopard_offload_media_remove_from_server_checkbox'
wp option delete 'nou_leopard_offload_media_cname'
wp option delete 'mcloud-has-run'
wp option delete 'mcloud-pinned-tools'
wp option delete 'ilab_media_cloud_hide_upgrade_bug'
wp option delete 'mcloud_show_wizard'
wp option delete 'mcloud_mux_assets_db_version'
wp option delete 'mcloud_mux_playback_db_version'
wp option delete 'mcloud_mux_renditions_db_version'
wp option delete 'mcloud_logging_table_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_settings_changed_%' OR option_name LIKE '_site_transient_settings_changed_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'mcloud_run_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilab_s3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilab_s3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilab_s3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilab_s3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcloud_optimize_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcloud_optimize_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcloud_optimize_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcloud_optimize_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_cloud'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nou_leopard_wom_amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nou_leopard_wom_amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nou_leopard_wom_amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nou_leopard_wom_amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mux_filmstrip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mux_filmstrip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mux_filmstrip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mux_filmstrip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_captions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_captions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_captions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_captions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
