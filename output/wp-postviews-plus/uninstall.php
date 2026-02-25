<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('PV+_botagent');
delete_site_option('PV+_botagent');
delete_option('PV+_option');
delete_site_option('PV+_option');
delete_option('PV+_useragent');
delete_site_option('PV+_useragent');
delete_option('PV+_views');
delete_site_option('PV+_views');
delete_option('PV+_DBversion');
delete_site_option('PV+_DBversion');

