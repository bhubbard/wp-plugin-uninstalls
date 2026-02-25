<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcloud-network-mode');
delete_site_option('mcloud-network-mode');
delete_option('mcloud_task_table_db_version');
delete_site_option('mcloud_task_table_db_version');
delete_option('mcloud_task_data_db_version');
delete_site_option('mcloud_task_data_db_version');
delete_option('mcloud_task_schedule_db_version');
delete_site_option('mcloud_task_schedule_db_version');
delete_option('mcloud_task_token_db_version');
delete_site_option('mcloud_task_token_db_version');
delete_option('mcloud_last_cron');
delete_site_option('mcloud_last_cron');
delete_option('mcloud-tasks-heartbeat-frequency');
delete_site_option('mcloud-tasks-heartbeat-frequency');
delete_option('mcloud_last_heartbeat');
delete_site_option('mcloud_last_heartbeat');
delete_option('mcloud_connection_test');
delete_site_option('mcloud_connection_test');
delete_option('ilab-imgix-presets');
delete_site_option('ilab-imgix-presets');
delete_option('ilab-imgix-size-presets');
delete_site_option('ilab-imgix-size-presets');
delete_option('mcloud-image-privacy');
delete_site_option('mcloud-image-privacy');
delete_option('ilab_s3_import_current');
delete_site_option('ilab_s3_import_current');
delete_option('ilab_s3_import_current_file');
delete_site_option('ilab_s3_import_current_file');
delete_option('ilab-backblaze-settings-error');
delete_site_option('ilab-backblaze-settings-error');
delete_option('ilab_media_cloud_b2_auth_cache');
delete_site_option('ilab_media_cloud_b2_auth_cache');
delete_option('ilab-bunnycdn-settings-error');
delete_site_option('ilab-bunnycdn-settings-error');
delete_option('mcloud-storage-supabase-settings-error');
delete_site_option('mcloud-storage-supabase-settings-error');
delete_option('mcloud-other-plugins-did-migrate');
delete_site_option('mcloud-other-plugins-did-migrate');
delete_option('as3cf_schema_version');
delete_site_option('as3cf_schema_version');
delete_option('mcloud-other-plugins-migrated');
delete_site_option('mcloud-other-plugins-migrated');
delete_option('wp-stateless-current-version');
delete_site_option('wp-stateless-current-version');
delete_option('leopard_schema_version');
delete_site_option('leopard_schema_version');
delete_option('sm_key_json');
delete_site_option('sm_key_json');
delete_option('sm_bucket');
delete_site_option('sm_bucket');
delete_option('sm_mode');
delete_site_option('sm_mode');
delete_option('sm_custom_domain');
delete_site_option('sm_custom_domain');
delete_option('sm_root_dir');
delete_site_option('sm_root_dir');
delete_option('sm_cache_control');
delete_site_option('sm_cache_control');
delete_option('tantan_wordpress_s3');
delete_site_option('tantan_wordpress_s3');
delete_option('nou_leopard_offload_media');
delete_site_option('nou_leopard_offload_media');
delete_option('nou_leopard_offload_media_connection_bucket_selected_select');
delete_site_option('nou_leopard_offload_media_connection_bucket_selected_select');
delete_option('nou_leopard_offload_media_bucket_folder_main');
delete_site_option('nou_leopard_offload_media_bucket_folder_main');
delete_option('nou_leopard_offload_media_remove_from_server_checkbox');
delete_site_option('nou_leopard_offload_media_remove_from_server_checkbox');
delete_option('nou_leopard_offload_media_cname');
delete_site_option('nou_leopard_offload_media_cname');
delete_option('mcloud-has-run');
delete_site_option('mcloud-has-run');
delete_option('mcloud-pinned-tools');
delete_site_option('mcloud-pinned-tools');
delete_option('ilab_media_cloud_hide_upgrade_bug');
delete_site_option('ilab_media_cloud_hide_upgrade_bug');
delete_option('mcloud_show_wizard');
delete_site_option('mcloud_show_wizard');
delete_option('mcloud_mux_assets_db_version');
delete_site_option('mcloud_mux_assets_db_version');
delete_option('mcloud_mux_playback_db_version');
delete_site_option('mcloud_mux_playback_db_version');
delete_option('mcloud_mux_renditions_db_version');
delete_site_option('mcloud_mux_renditions_db_version');
delete_option('mcloud_logging_table_db_version');
delete_site_option('mcloud_logging_table_db_version');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_settings_changed_%', '_site_transient_settings_changed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

// Clear Cron Jobs
wp_clear_scheduled_hook('mcloud_run_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ilab_s3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ilab_s3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ilab_s3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ilab_s3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mcloud_optimize_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mcloud_optimize_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mcloud_optimize_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mcloud_optimize_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sm_cloud' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sm_cloud' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sm_cloud' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sm_cloud' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nou_leopard_wom_amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nou_leopard_wom_amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nou_leopard_wom_amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nou_leopard_wom_amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mux_filmstrip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mux_filmstrip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mux_filmstrip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mux_filmstrip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_captions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_captions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_captions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_captions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

