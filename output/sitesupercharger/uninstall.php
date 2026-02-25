<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssc_guid');
delete_site_option('ssc_guid');
delete_option('ssc_404_inactive_url');
delete_site_option('ssc_404_inactive_url');
delete_option('ssc_301_redirect_url');
delete_site_option('ssc_301_redirect_url');
delete_option('ssc_main_phone');
delete_site_option('ssc_main_phone');
delete_option('ssc_alt_phone');
delete_site_option('ssc_alt_phone');
delete_option('ssc_interlinking_keywords');
delete_site_option('ssc_interlinking_keywords');
delete_option('ssc_interlinking_links');
delete_site_option('ssc_interlinking_links');
delete_option('ssc_config_last_modified');
delete_site_option('ssc_config_last_modified');
delete_option('ssc_last_check');
delete_site_option('ssc_last_check');
delete_option('ssc_last_update');
delete_site_option('ssc_last_update');
delete_option('ssc_last_update_completion');
delete_site_option('ssc_last_update_completion');
delete_option('ssc_image_count');
delete_site_option('ssc_image_count');
delete_option('ssc_page_count');
delete_site_option('ssc_page_count');
delete_option('ssc_post_count');
delete_site_option('ssc_post_count');
delete_option('ssc_plugin_version');
delete_site_option('ssc_plugin_version');
delete_option('ssc_force_update');
delete_site_option('ssc_force_update');
delete_option('ssc_group_size');
delete_site_option('ssc_group_size');
delete_option('ssc_last_check_result');
delete_site_option('ssc_last_check_result');
delete_option('ssc_locked');
delete_site_option('ssc_locked');
delete_option('ssc_log');
delete_site_option('ssc_log');
delete_option('ssc_queue');
delete_site_option('ssc_queue');
delete_option('ssc_queue_cancel');
delete_site_option('ssc_queue_cancel');
delete_option('ssc_queue_current_page');
delete_site_option('ssc_queue_current_page');
delete_option('ssc_queue_current_page_timestamp');
delete_site_option('ssc_queue_current_page_timestamp');
delete_option('ssc_queue_hook_timestamp');
delete_site_option('ssc_queue_hook_timestamp');
delete_option('ssc_queue_length');
delete_site_option('ssc_queue_length');
delete_option('ssc_queue_length_total');
delete_site_option('ssc_queue_length_total');
delete_option('ssc_queue_page_processed');
delete_site_option('ssc_queue_page_processed');
delete_option('ssc_queue_page_skipped');
delete_site_option('ssc_queue_page_skipped');
delete_option('ssc_queue_post_processed');
delete_site_option('ssc_queue_post_processed');
delete_option('ssc_queue_post_skipped');
delete_site_option('ssc_queue_post_skipped');
delete_option('ssc_update_end');
delete_site_option('ssc_update_end');
delete_option('ssc_update_method');
delete_site_option('ssc_update_method');
delete_option('ssc_update_result');
delete_site_option('ssc_update_result');
delete_option('ssc_update_start');
delete_site_option('ssc_update_start');

// Delete Transients
delete_transient('ssc_readConfig_lock');
delete_site_transient('ssc_readConfig_lock');
delete_transient('ssc_processQueue_lock');
delete_site_transient('ssc_processQueue_lock');
delete_transient('ssc_processCompleted_lock');
delete_site_transient('ssc_processCompleted_lock');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ssc_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ssc_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ssc_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ssc_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kd_featured-image-2_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kd_featured-image-2_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kd_featured-image-2_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kd_featured-image-2_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kd_featured-image-3_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kd_featured-image-3_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kd_featured-image-3_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kd_featured-image-3_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kd_featured-image-4_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kd_featured-image-4_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kd_featured-image-4_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kd_featured-image-4_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kd_featured-image-5_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kd_featured-image-5_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kd_featured-image-5_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kd_featured-image-5_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ssc_parent_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ssc_parent_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ssc_parent_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ssc_parent_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ssc_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ssc_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ssc_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ssc_image' ) );

