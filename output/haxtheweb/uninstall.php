<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('haxtheweb_location');
delete_site_option('haxtheweb_location');
delete_option('haxtheweb_location_other');
delete_site_option('haxtheweb_location_other');
delete_option('haxtheweb_blox');
delete_site_option('haxtheweb_blox');
delete_option('haxtheweb_stax');
delete_site_option('haxtheweb_stax');
delete_option('haxtheweb_pk');
delete_site_option('haxtheweb_pk');
delete_option('haxtheweb_autoload_element_list');
delete_site_option('haxtheweb_autoload_element_list');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('haxtheweb_local_build_file');
delete_site_option('haxtheweb_local_build_file');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_my_file_upload' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_my_file_upload' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_my_file_upload' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_my_file_upload' ) );

