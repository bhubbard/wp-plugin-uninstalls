<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('course_display_settings');
delete_site_option('course_display_settings');
delete_option('display_position');
delete_site_option('display_position');
delete_option('list_type');
delete_site_option('list_type');
delete_option('scc_orderby');
delete_site_option('scc_orderby');
delete_option('scc_order');
delete_site_option('scc_order');
delete_option('current_post');
delete_site_option('current_post');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'taxonomy_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

