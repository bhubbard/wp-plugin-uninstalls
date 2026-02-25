<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_hotproducts');
delete_site_option('enable_hotproducts');
delete_option('hotproducts_text');
delete_site_option('hotproducts_text');
delete_option('show_flame');
delete_site_option('show_flame');
delete_option('text_background_colour');
delete_site_option('text_background_colour');
delete_option('text_colour');
delete_site_option('text_colour');
delete_option('enable_hotproducts_archive');
delete_site_option('enable_hotproducts_archive');
delete_option('hotproducts_text_archive');
delete_site_option('hotproducts_text_archive');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hotproductscount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hotproductscount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hotproductscount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hotproductscount' ) );

