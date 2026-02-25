<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qcanlytics_google_analytics_id');
delete_site_option('qcanlytics_google_analytics_id');
delete_option('qcanlytics_exclude_users');
delete_site_option('qcanlytics_exclude_users');
delete_option('qcanlytics_disable_tracking');
delete_site_option('qcanlytics_disable_tracking');
delete_option('qcanlytics_page_speed');
delete_site_option('qcanlytics_page_speed');

