<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lmgenius_db_version');
delete_site_option('lmgenius_db_version');

// Delete Transients
delete_transient('lmgenius_home_url_parsed');
delete_site_transient('lmgenius_home_url_parsed');

// Clear Cron Jobs
wp_clear_scheduled_hook('lmgenius_process_link_updates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lmgenius_temporary_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lmgenius_temporary_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lmgenius_temporary_rules' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lmgenius_temporary_rules' ) );

