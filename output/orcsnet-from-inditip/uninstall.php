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
delete_option('orcsnet_placement');
delete_site_option('orcsnet_placement');
delete_option('orcsnet_userid');
delete_site_option('orcsnet_userid');
delete_option('orcsnet_publisher_lock');
delete_site_option('orcsnet_publisher_lock');
delete_option('orcsnet_variant');
delete_site_option('orcsnet_variant');

