<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('screenly_cast_enabled');
delete_site_option('screenly_cast_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'screenly_cast_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('screenly_previous_theme');
delete_site_option('screenly_previous_theme');
delete_option('screenly_cast_cache_duration');
delete_site_option('screenly_cast_cache_duration');
delete_option('screenly_cast_logo');
delete_site_option('screenly_cast_logo');
delete_option('screenly_options_logo');
delete_site_option('screenly_options_logo');

