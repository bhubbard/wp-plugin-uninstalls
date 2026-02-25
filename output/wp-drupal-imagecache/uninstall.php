<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdi_presets');
delete_site_option('wpdi_presets');
delete_option('wpdi_sample_image_id');
delete_site_option('wpdi_sample_image_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpdi_preset_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpdi_delete_preset_queue');
delete_site_option('wpdi_delete_preset_queue');

