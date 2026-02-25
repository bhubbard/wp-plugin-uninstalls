<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sss_settings_data');
delete_site_option('sss_settings_data');
delete_option('sss_cron_marker');
delete_site_option('sss_cron_marker');
delete_option('sss_log');
delete_site_option('sss_log');
delete_option('sss_shared_x_pos');
delete_site_option('sss_shared_x_pos');
delete_option('cron');
delete_site_option('cron');

// Delete Transients
delete_transient('syn_revivify_transient_upgrade');
delete_site_transient('syn_revivify_transient_upgrade');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_synex_revivify_cronjob');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'SRS_SHARED_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'SRS_SHARED_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'SRS_SHARED_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'SRS_SHARED_%' ) );

