<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('picdefense_api_key');
delete_site_option('picdefense_api_key');
delete_option('picdefense_user_ID');
delete_site_option('picdefense_user_ID');
delete_option('picdefense_test_connect');
delete_site_option('picdefense_test_connect');
delete_option('picdefense_inc_all_imgs');
delete_site_option('picdefense_inc_all_imgs');
delete_option('picdefense_rescan_images');
delete_site_option('picdefense_rescan_images');
delete_option('picdefense_submit_domain');
delete_site_option('picdefense_submit_domain');
delete_option('picdefense_plugin_version');
delete_site_option('picdefense_plugin_version');
delete_option('picdefense_submit_images');
delete_site_option('picdefense_submit_images');
delete_option('picdefense_images_count');
delete_site_option('picdefense_images_count');
delete_option('old_attachment_id_to_delete');
delete_site_option('old_attachment_id_to_delete');
delete_option('picdio_cache_clear_message_dismissed');
delete_site_option('picdio_cache_clear_message_dismissed');

// Delete Transients
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('picdio_scheduled_images_scan');
wp_clear_scheduled_hook('picdio_scheduled_images_job_submit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

