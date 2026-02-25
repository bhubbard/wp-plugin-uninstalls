<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orphanix_last_live_scan_at');
delete_site_option('orphanix_last_live_scan_at');
delete_option('orphanix_last_live_scan_status');
delete_site_option('orphanix_last_live_scan_status');
delete_option('orphanix_last_live_scan_mode');
delete_site_option('orphanix_last_live_scan_mode');
delete_option('orphanix_scan_compat');
delete_site_option('orphanix_scan_compat');
delete_option('orphanix_delete_on_uninstall');
delete_site_option('orphanix_delete_on_uninstall');
delete_option('orphanix_db_version');
delete_site_option('orphanix_db_version');
delete_option('orphanix_db_migrated');
delete_site_option('orphanix_db_migrated');
delete_option('widget_media_image');
delete_site_option('widget_media_image');
delete_option('widget_media_gallery');
delete_site_option('widget_media_gallery');
delete_option('orphanix_live_scan_archives');
delete_site_option('orphanix_live_scan_archives');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_progress', '_site_transient_%_progress' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_settings', '_site_transient_%_settings' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_processing', '_site_transient_%_processing' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_orphanix_live_scan_progress_%', '_site_transient_orphanix_live_scan_progress_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('orphanix_process_scan_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

