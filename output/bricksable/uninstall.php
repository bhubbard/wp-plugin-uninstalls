<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bricksable_activation_date');
delete_site_option('bricksable_activation_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_activation_date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bricksable_json_uploads');
delete_site_option('bricksable_json_uploads');
delete_option('bricksable_all_elements');
delete_site_option('bricksable_all_elements');
delete_option('bricksable_bricks_builder_filter_save_messages');
delete_site_option('bricksable_bricks_builder_filter_save_messages');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bricksable_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bricksable_bricks_builder_elements');
delete_site_option('bricksable_bricks_builder_elements');
delete_option('bricksable_image-hotspots');
delete_site_option('bricksable_image-hotspots');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bricksable_uninstall_on_delete');
delete_site_option('bricksable_uninstall_on_delete');

