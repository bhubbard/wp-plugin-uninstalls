<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caes_target');
delete_site_option('caes_target');
delete_option('caes_link');
delete_site_option('caes_link');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('caes_symlink_list');
delete_site_option('caes_symlink_list');
delete_option('caes_symlink_list_lastdelete');
delete_site_option('caes_symlink_list_lastdelete');

