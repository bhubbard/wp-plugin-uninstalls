<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_preloader_general');
delete_site_option('advanced_preloader_general');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'advanced_preloader_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('advanced_preloader_design');
delete_site_option('advanced_preloader_design');
delete_option('advanced_preloader_animation');
delete_site_option('advanced_preloader_animation');

