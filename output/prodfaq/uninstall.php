<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prodfaq_position');
delete_site_option('prodfaq_position');
delete_option('prodfaq_design');
delete_site_option('prodfaq_design');
delete_option('prodfaq_enabled');
delete_site_option('prodfaq_enabled');
delete_option('prodfaq_hide_out_of_stock');
delete_site_option('prodfaq_hide_out_of_stock');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_prodfaq_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_prodfaq_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_prodfaq_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_prodfaq_items' ) );

