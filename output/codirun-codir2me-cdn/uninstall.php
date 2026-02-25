<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codir2me_debug_mode');
delete_site_option('codir2me_debug_mode');
delete_option('codir2me_reprocessing_status');
delete_site_option('codir2me_reprocessing_status');
delete_option('codir2me_classes_check_version');
delete_site_option('codir2me_classes_check_version');
delete_option('codir2me_is_cdn_active');
delete_site_option('codir2me_is_cdn_active');
delete_option('codir2me_assets_handler_initialized');
delete_site_option('codir2me_assets_handler_initialized');
delete_option('codir2me_reprocessing_image_ids');
delete_site_option('codir2me_reprocessing_image_ids');
delete_option('codir2me_pending_files');
delete_site_option('codir2me_pending_files');
delete_option('codir2me_upload_status');
delete_site_option('codir2me_upload_status');
delete_option('codir2me_upload_error');
delete_site_option('codir2me_upload_error');
delete_option('codir2me_pending_images');
delete_site_option('codir2me_pending_images');
delete_option('codir2me_images_upload_status');
delete_site_option('codir2me_images_upload_status');
delete_option('codir2me_images_upload_error');
delete_site_option('codir2me_images_upload_error');
delete_option('codir2me_uploaded_thumbnails_by_size');
delete_site_option('codir2me_uploaded_thumbnails_by_size');
delete_option('codir2me_cached_thumbnails_info');
delete_site_option('codir2me_cached_thumbnails_info');
delete_option('codir2me_assets_need_aws_sdk');
delete_site_option('codir2me_assets_need_aws_sdk');
delete_option('codir2me_assets_need_asyncaws_sdk');
delete_site_option('codir2me_assets_need_asyncaws_sdk');
delete_option('codir2me_thumbnail_option');
delete_site_option('codir2me_thumbnail_option');
delete_option('codir2me_selected_thumbnails');
delete_site_option('codir2me_selected_thumbnails');
delete_option('codir2me_auto_upload_static');
delete_site_option('codir2me_auto_upload_static');
delete_option('codir2me_auto_upload_frequency');
delete_site_option('codir2me_auto_upload_frequency');
delete_option('codir2me_upload_on_update');
delete_site_option('codir2me_upload_on_update');
delete_option('codir2me_enable_versioning');
delete_site_option('codir2me_enable_versioning');
delete_option('codir2me_file_upload_timestamps');
delete_site_option('codir2me_file_upload_timestamps');
delete_option('codir2me_auto_upload_thumbnails');
delete_site_option('codir2me_auto_upload_thumbnails');
delete_option('codir2me_access_key');
delete_site_option('codir2me_access_key');
delete_option('codir2me_is_images_cdn_active');
delete_site_option('codir2me_is_images_cdn_active');
delete_option('CODIR2ME_CDN_VERSION');
delete_site_option('CODIR2ME_CDN_VERSION');
delete_option('codir2me_clean_logs_on_deactivate');
delete_site_option('codir2me_clean_logs_on_deactivate');
delete_option('codir2me_pending_resend_paths');
delete_site_option('codir2me_pending_resend_paths');
delete_option('codir2me_uploaded_files');
delete_site_option('codir2me_uploaded_files');
delete_option('codir2me_upload_timestamps');
delete_site_option('codir2me_upload_timestamps');
delete_option('codir2me_assets_version');
delete_site_option('codir2me_assets_version');
delete_option('codir2me_resend_files_list');
delete_site_option('codir2me_resend_files_list');
delete_option('codir2me_resend_position');
delete_site_option('codir2me_resend_position');
delete_option('codir2me_cdn_url');
delete_site_option('codir2me_cdn_url');
delete_option('codir2me_secret_key');
delete_site_option('codir2me_secret_key');
delete_option('codir2me_bucket');
delete_site_option('codir2me_bucket');
delete_option('codir2me_endpoint');
delete_site_option('codir2me_endpoint');
delete_option('codir2me_batch_size');
delete_site_option('codir2me_batch_size');
delete_option('codir2me_images_batch_size');
delete_site_option('codir2me_images_batch_size');
delete_option('codir2me_image_optimization_options');
delete_site_option('codir2me_image_optimization_options');
delete_option('codir2me_disable_cdn_admin');
delete_site_option('codir2me_disable_cdn_admin');
delete_option('codir2me_all_images_sent');
delete_site_option('codir2me_all_images_sent');
delete_option('codir2me_original_images_count');
delete_site_option('codir2me_original_images_count');
delete_option('codir2me_missing_images_count');
delete_site_option('codir2me_missing_images_count');
delete_option('codir2me_auto_upload_page_assets');
delete_site_option('codir2me_auto_upload_page_assets');
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
delete_option('codir2me_total_images_found');
delete_site_option('codir2me_total_images_found');
delete_option('codir2me_total_images_pending');
delete_site_option('codir2me_total_images_pending');
delete_option('codir2me_thumbnail_images_count');
delete_site_option('codir2me_thumbnail_images_count');
delete_option('codir2me_uploaded_images');
delete_site_option('codir2me_uploaded_images');
delete_option('codir2me_format_webp_enabled');
delete_site_option('codir2me_format_webp_enabled');
delete_option('codir2me_format_avif_enabled');
delete_site_option('codir2me_format_avif_enabled');
delete_option('codir2me_delete_in_progress');
delete_site_option('codir2me_delete_in_progress');
delete_option('codir2me_items_to_delete');
delete_site_option('codir2me_items_to_delete');
delete_option('codir2me_delete_status');
delete_site_option('codir2me_delete_status');
delete_option('codir2me_broken_files');
delete_site_option('codir2me_broken_files');
delete_option('codir2me_file_versions');
delete_site_option('codir2me_file_versions');
delete_option('codir2me_format_order');
delete_site_option('codir2me_format_order');
delete_option('codir2me_enable_optimization');
delete_site_option('codir2me_enable_optimization');

// Delete Transients
delete_transient('codir2me_need_cache_clear');
delete_site_transient('codir2me_need_cache_clear');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codir2me_disabled_%', '_site_transient_codir2me_disabled_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('codir2me_background_reprocessing_event');
wp_clear_scheduled_hook('codir2me_cdn_cleanup_event');
wp_clear_scheduled_hook('codir2me_auto_upload_cron');
wp_clear_scheduled_hook('codir2me_background_resend_event');
wp_clear_scheduled_hook('codir2me_batch_verify_files');
wp_clear_scheduled_hook('codir2me_process_page_assets');
wp_clear_scheduled_hook('codir2me_process_general_assets');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

