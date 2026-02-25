<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fatcloud_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fatcloud_width');
delete_site_option('fatcloud_width');
delete_option('fatcloud_height');
delete_site_option('fatcloud_height');
delete_option('fatcloud_netlife_link');
delete_site_option('fatcloud_netlife_link');
delete_option('fatcloud_skin');
delete_site_option('fatcloud_skin');

