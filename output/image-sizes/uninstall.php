<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thumbpress_notice_dismissed_week');
delete_site_option('thumbpress_notice_dismissed_week');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'thumbpress_notice_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('thumbpress_settings_init');
delete_site_option('thumbpress_settings_init');
delete_option('schema-ActionScheduler_StoreSchema');
delete_site_option('schema-ActionScheduler_StoreSchema');
delete_option('schema-ActionScheduler_LoggerSchema');
delete_site_option('schema-ActionScheduler_LoggerSchema');
delete_option('thumbpress-year-end-dec-21_campaign_dismissed');
delete_site_option('thumbpress-year-end-dec-21_campaign_dismissed');
delete_option('image_sizes_year_notice');
delete_site_option('image_sizes_year_notice');
delete_option('codexpert-blog-json');
delete_site_option('codexpert-blog-json');
delete_option('thumbpress_max_size_value');
delete_site_option('thumbpress_max_size_value');
delete_option('thumbpress_live_chat_enabled');
delete_site_option('thumbpress_live_chat_enabled');
delete_option('thumbpress_modules');
delete_site_option('thumbpress_modules');
delete_option('_image-sizes');
delete_site_option('_image-sizes');
delete_option('medium_large_size_w');
delete_site_option('medium_large_size_w');
delete_option('medium_large_size_h');
delete_site_option('medium_large_size_h');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dismissed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('thumbpress_action_log');
delete_site_option('thumbpress_action_log');
delete_option('thumbpress_convert_img_val');
delete_site_option('thumbpress_convert_img_val');
delete_option('thumbpress_convert_progress');
delete_site_option('thumbpress_convert_progress');
delete_option('thumbpress_convert_total_processd');
delete_site_option('thumbpress_convert_total_processd');
delete_option('thumbpress_convert_total_converted');
delete_site_option('thumbpress_convert_total_converted');
delete_option('thumbpress_now_convert_background_total_images');
delete_site_option('thumbpress_now_convert_background_total_images');
delete_option('convert_last_completed_time');
delete_site_option('convert_last_completed_time');
delete_option('thumbpress_now_convert_total_image');
delete_site_option('thumbpress_now_convert_total_image');
delete_option('image-sizes_setup_done');
delete_site_option('image-sizes_setup_done');
delete_option('image_download_disable');
delete_site_option('image_download_disable');
delete_option('thumbpress_regenerate_progress');
delete_site_option('thumbpress_regenerate_progress');
delete_option('thumbpress_regenerate_total_processed');
delete_site_option('thumbpress_regenerate_total_processed');
delete_option('thumbpress_regenerate_total_deleted');
delete_site_option('thumbpress_regenerate_total_deleted');
delete_option('thumbpress_regenerate_total_created');
delete_site_option('thumbpress_regenerate_total_created');
delete_option('thumbpress_regenerate_limit');
delete_site_option('thumbpress_regenerate_limit');
delete_option('thumbpress_regenerate_total_image');
delete_site_option('thumbpress_regenerate_total_image');
delete_option('thumbpress_regenerate_last_schedule_time');
delete_site_option('thumbpress_regenerate_last_schedule_time');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cx-plugin-info-%', '_site_transient_cx-plugin-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('codexpert-daily');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbpress_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbpress_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbpress_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbpress_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbpress_linkedin_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbpress_linkedin_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbpress_linkedin_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbpress_linkedin_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbpress_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbpress_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbpress_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbpress_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbpress_pinterest_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbpress_pinterest_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbpress_pinterest_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbpress_pinterest_image' ) );

