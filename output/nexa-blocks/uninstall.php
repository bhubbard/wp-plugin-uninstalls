<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nexa_gmap_api_key');
delete_site_option('nexa_gmap_api_key');
delete_option('nexa_blocks_settings');
delete_site_option('nexa_blocks_settings');
delete_option('nexa_blocks');
delete_site_option('nexa_blocks');
delete_option('nexa_modules');
delete_site_option('nexa_modules');
delete_option('nexa_apis');
delete_site_option('nexa_apis');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nexa_block_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nexa_favorites');
delete_site_option('nexa_favorites');

// Delete Transients
delete_transient('nexa_templates');
delete_site_transient('nexa_templates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

