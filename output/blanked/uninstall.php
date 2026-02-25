<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blanked_disable_wp_head');
delete_site_option('blanked_disable_wp_head');
delete_option('blanked_disable_wp_body_open');
delete_site_option('blanked_disable_wp_body_open');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'blanked_enable_post_type__%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'blanked_enable_special_page__%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('blanked_remove_body_class');
delete_site_option('blanked_remove_body_class');
delete_option('blanked_add_body_class');
delete_site_option('blanked_add_body_class');
delete_option('blanked_remove_post_class');
delete_site_option('blanked_remove_post_class');
delete_option('blanked_add_post_class');
delete_site_option('blanked_add_post_class');

