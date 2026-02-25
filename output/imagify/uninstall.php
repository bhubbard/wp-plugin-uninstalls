<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('extendify_site_id');
delete_site_option('extendify_site_id');
delete_option('gform_enable_noconflict');
delete_site_option('gform_enable_noconflict');
delete_option('ngg_options');
delete_site_option('ngg_options');
delete_option('imagify_old_version');
delete_site_option('imagify_old_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ngg_imagify_data_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');
delete_option('imagifyp_id');
delete_site_option('imagifyp_id');
delete_option('imagify_settings');
delete_site_option('imagify_settings');
delete_option('imagify_files_db_version');
delete_site_option('imagify_files_db_version');
delete_option('imagify_folders_db_version');
delete_site_option('imagify_folders_db_version');
delete_option('imagify_data');
delete_site_option('imagify_data');
delete_option('ngg_imagify_data_db_version');
delete_site_option('ngg_imagify_data_db_version');
delete_option('plugin_family_dismiss_promote_imagify');
delete_site_option('plugin_family_dismiss_promote_imagify');

// Delete Transients
delete_transient('imagify_custom-folders_optimize_running');
delete_site_transient('imagify_custom-folders_optimize_running');
delete_transient('imagify_wp_optimize_running');
delete_site_transient('imagify_wp_optimize_running');
delete_transient('imagify_bulk_optimization_complete');
delete_site_transient('imagify_bulk_optimization_complete');
delete_transient('imagify_missing_next_gen_total');
delete_site_transient('imagify_missing_next_gen_total');
delete_transient('imagify_bulk_optimization_result');
delete_site_transient('imagify_bulk_optimization_result');
delete_transient('imagify_stat_without_next_gen');
delete_site_transient('imagify_stat_without_next_gen');
delete_transient('imagify_bulk_optimization_infos');
delete_site_transient('imagify_bulk_optimization_infos');
delete_transient('do_imagify_rating_cron');
delete_site_transient('do_imagify_rating_cron');
delete_transient('imagify_user_images_count');
delete_site_transient('imagify_user_images_count');
delete_transient('imagify_seen_rating_notice');
delete_site_transient('imagify_seen_rating_notice');
delete_transient('imagify_activation');
delete_site_transient('imagify_activation');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
delete_transient('imagify_themes_plugins_to_sync');
delete_site_transient('imagify_themes_plugins_to_sync');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('imagify_user_cache');
delete_site_transient('imagify_user_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_imagify_rpc_%', '_site_transient_imagify_rpc_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('imagify_check_licence_1');
delete_site_transient('imagify_check_licence_1');
delete_transient('imagify_attachments_number_modal');
delete_site_transient('imagify_attachments_number_modal');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_imagify-auto-optimize-%', '_site_transient_imagify-auto-optimize-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('imagify_large_library');
delete_site_transient('imagify_large_library');
delete_transient('imagify_user');
delete_site_transient('imagify_user');
delete_transient('imagify_max_image_size');
delete_site_transient('imagify_max_image_size');
delete_transient('imagify_bulk_optimization_level');
delete_site_transient('imagify_bulk_optimization_level');

// Clear Cron Jobs
wp_clear_scheduled_hook('imagify_rating_event');
wp_clear_scheduled_hook('imagify_update_library_size_calculations_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_imagify_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_imagify_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_imagify_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_imagify_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_imagify_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_imagify_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_imagify_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_imagify_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_imagify_optimization_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_imagify_optimization_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_imagify_optimization_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_imagify_optimization_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpos3_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpos3_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpos3_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpos3_filesize_total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amazonS3_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_imagify_ignore_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_imagify_ignore_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_imagify_ignore_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_imagify_ignore_ads' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_imagify_ignore_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_imagify_ignore_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_imagify_ignore_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_imagify_ignore_notices' ) );

