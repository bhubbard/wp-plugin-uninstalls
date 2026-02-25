<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kwli_add_in_list');
delete_site_option('kwli_add_in_list');
delete_option('kwli_add_in_list_class');
delete_site_option('kwli_add_in_list_class');
delete_option('kwli_add_in_single');
delete_site_option('kwli_add_in_single');
delete_option('kwli_add_in_single_class');
delete_site_option('kwli_add_in_single_class');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_kwl_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_kwl_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_kwl_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_kwl_items' ) );

