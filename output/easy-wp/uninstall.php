<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easywp_adminview');
delete_site_option('easywp_adminview');
delete_option('easywp_pages_add_delete');
delete_site_option('easywp_pages_add_delete');
delete_option('easy-wp-current-button');
delete_site_option('easy-wp-current-button');
delete_option('easy-wp-current-title');
delete_site_option('easy-wp-current-title');
delete_option('easy-wp-current-backlink');
delete_site_option('easy-wp-current-backlink');
delete_option('wp-analytics-login-email');
delete_site_option('wp-analytics-login-email');
delete_option('wp-analytics-login-password');
delete_site_option('wp-analytics-login-password');
delete_option('wp-analytics-profile');
delete_site_option('wp-analytics-profile');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-posttype' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('easywp_admin_godbutton');
delete_site_option('easywp_admin_godbutton');

