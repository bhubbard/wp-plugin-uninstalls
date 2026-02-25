<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ait_iat_admin_notice');
delete_site_option('ait_iat_admin_notice');
delete_option('ait_iat_generation_timestamps');
delete_site_option('ait_iat_generation_timestamps');
delete_option('ait_iat_license');
delete_site_option('ait_iat_license');
delete_option('ait_iat_full_library_queue');
delete_site_option('ait_iat_full_library_queue');
delete_option('ait_iat_full_library_last_run');
delete_site_option('ait_iat_full_library_last_run');

// Clear Cron Jobs
wp_clear_scheduled_hook('ait_iat_cron_bulk_generate');
wp_clear_scheduled_hook('ait_iat_prune_logs_daily');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

