<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wt_time_1');
delete_site_option('_wt_time_1');
delete_option('_wt_time_2');
delete_site_option('_wt_time_2');
delete_option('_wt_time_3');
delete_site_option('_wt_time_3');
delete_option('_wt_time_4');
delete_site_option('_wt_time_4');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_wt_time_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

