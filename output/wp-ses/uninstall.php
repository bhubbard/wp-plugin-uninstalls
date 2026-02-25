<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wposes_tracking_key');
delete_site_option('wposes_tracking_key');
delete_option('site_admins');
delete_site_option('site_admins');
delete_option('wposes_last_cron_run');
delete_site_option('wposes_last_cron_run');
delete_option('wposes_last_cron_check');
delete_site_option('wposes_last_cron_check');
delete_option('wposes_cron_error_email');
delete_site_option('wposes_cron_error_email');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wposes_constant_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wposes_lite_version');
delete_site_option('wposes_lite_version');
delete_option('wposes_doing_upgrade');
delete_site_option('wposes_doing_upgrade');
delete_option('wposes_settings');
delete_site_option('wposes_settings');
delete_option('wpses_options');
delete_site_option('wpses_options');

// Delete Transients
delete_transient('wposes_deactivated_notice_id');
delete_site_transient('wposes_deactivated_notice_id');
delete_transient('wposes_unverified_senders');
delete_site_transient('wposes_unverified_senders');
delete_transient('wposes_notices');
delete_site_transient('wposes_notices');
delete_transient('wposes_doing_cron_check');
delete_site_transient('wposes_doing_cron_check');
delete_transient('wposes_verified_senders');
delete_site_transient('wposes_verified_senders');
delete_transient('wposes_triggered_queue');
delete_site_transient('wposes_triggered_queue');

// Clear Cron Jobs
wp_clear_scheduled_hook('deliciousbrains_wp_offload_ses_log_cleanup');
wp_clear_scheduled_hook('deliciousbrains_wp_offload_ses_queue_connection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wposes_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wposes_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wposes_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wposes_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wposes_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wposes_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wposes_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wposes_dismissed_notices' ) );

