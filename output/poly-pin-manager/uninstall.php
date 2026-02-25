<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poly_pin_enabled_types');
delete_site_option('poly_pin_enabled_types');
delete_option('poly_pin_quick_pinning');
delete_site_option('poly_pin_quick_pinning');
delete_option('poly_pin_enable_edit_plugins_themes');
delete_site_option('poly_pin_enable_edit_plugins_themes');
delete_option('poly_pin_terms');
delete_site_option('poly_pin_terms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'poly_pin_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('poly_pin_quick_access_menu');
delete_site_option('poly_pin_quick_access_menu');
delete_option('poly_pin_plugins');
delete_site_option('poly_pin_plugins');
delete_option('poly_pin_themes');
delete_site_option('poly_pin_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'term_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'term_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'term_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'term_note' ) );

