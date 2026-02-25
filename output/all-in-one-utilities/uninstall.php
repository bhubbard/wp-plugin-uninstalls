<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'aiowpu_enabled_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aiowpu_db_version');
delete_site_option('aiowpu_db_version');
delete_option('aiowpu_disable_unnecessary_features_options');
delete_site_option('aiowpu_disable_unnecessary_features_options');
delete_option('aiowpu_featured_image_id');
delete_site_option('aiowpu_featured_image_id');

// Delete Transients
delete_transient('aiowpu_database_type');
delete_site_transient('aiowpu_database_type');
delete_transient('aiowpu_database_version');
delete_site_transient('aiowpu_database_version');

