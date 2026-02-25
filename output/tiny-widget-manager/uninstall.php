<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twim_debug_mode');
delete_site_option('twim_debug_mode');
delete_option('twim_minified_assets');
delete_site_option('twim_minified_assets');
delete_option('twim_color_theme');
delete_site_option('twim_color_theme');
delete_option('twim_disable_block_editor');
delete_site_option('twim_disable_block_editor');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

