<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enq_me_user_licence');
delete_site_option('enq_me_user_licence');
delete_option('enq_me_root_dependancy');
delete_site_option('enq_me_root_dependancy');
delete_option('enq_me_assets_to_enqueue');
delete_site_option('enq_me_assets_to_enqueue');
delete_option('enq_me_assets_ids_to_enqueue');
delete_site_option('enq_me_assets_ids_to_enqueue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enq_me_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enq_me_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enq_me_last_modified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enq_me_last_modified' ) );

