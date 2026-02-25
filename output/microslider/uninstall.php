<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'microslider_slide_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('microslider_ids');
delete_site_option('microslider_ids');
delete_option('microslider_slide_1');
delete_site_option('microslider_slide_1');
delete_option('microslider_options');
delete_site_option('microslider_options');

