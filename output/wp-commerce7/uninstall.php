<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('c7wp_activation');
delete_site_option('c7wp_activation');
delete_option('c7wp_settings');
delete_site_option('c7wp_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_c7wp_%', '_site_transient_c7wp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('c7wp-admin-notice-pages');
delete_site_transient('c7wp-admin-notice-pages');
delete_transient('c7wp-admin-notice-pages-missing');
delete_site_transient('c7wp-admin-notice-pages-missing');
delete_transient('c7wp_remote_notices');
delete_site_transient('c7wp_remote_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('c7wp_fetch_remote_notices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'c7wp_notice_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'c7wp_notice_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'c7wp_notice_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'c7wp_notice_dismissed_%' ) );

