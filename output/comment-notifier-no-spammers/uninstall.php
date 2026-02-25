<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lstc');
delete_site_option('lstc');
delete_option('lstc_migrate_options_complete');
delete_site_option('lstc_migrate_options_complete');
delete_option('lstc_cleanup_emails_done');
delete_site_option('lstc_cleanup_emails_done');
delete_option('lstc_update_table_utf8_complete');
delete_site_option('lstc_update_table_utf8_complete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lstc_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lstc_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lstc_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lstc_subscribe' ) );

