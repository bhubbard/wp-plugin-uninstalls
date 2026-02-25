<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'frontend_admin_menu_mapping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'frontend_admin_menu_mapping_admin_bar_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('frontend_admin_menu_status');
delete_site_option('frontend_admin_menu_status');
delete_option('frontend_admin_menu_admin_menu_backend');
delete_site_option('frontend_admin_menu_admin_menu_backend');
delete_option('frontend_admin_menu_color');
delete_site_option('frontend_admin_menu_color');
delete_option('frontend_admin_menu');
delete_site_option('frontend_admin_menu');
delete_option('frontend_admin_menu_admin_bar');
delete_site_option('frontend_admin_menu_admin_bar');

