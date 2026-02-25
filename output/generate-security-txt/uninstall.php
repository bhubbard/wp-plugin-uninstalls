<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%notification_delete' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%securitytxt_email_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('securitytxt_email_sent');
delete_site_option('securitytxt_email_sent');
delete_option('securitytxt_archiveorg_request');
delete_site_option('securitytxt_archiveorg_request');
delete_option('securitytxt_hash');
delete_site_option('securitytxt_hash');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%expires' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('securitytxt_logs');
delete_site_option('securitytxt_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('check_securitytxt_expiration_event');
wp_clear_scheduled_hook('securitytxt_archiveorg_request_event');
wp_clear_scheduled_hook('securitytxt_verify_file_contents_event');
wp_clear_scheduled_hook('securitytxt_verify_file_contents');

