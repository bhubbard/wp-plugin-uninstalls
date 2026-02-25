<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('finseo_admin_notices');
delete_site_option('finseo_admin_notices');
delete_option('default_status');
delete_site_option('default_status');
delete_option('finseo_delete_data_on_uninstall');
delete_site_option('finseo_delete_data_on_uninstall');
delete_option('finseo_api_key');
delete_site_option('finseo_api_key');
delete_option('finseo_api_secret');
delete_site_option('finseo_api_secret');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'finseo_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'finseo_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'finseo_dismissed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'finseo_dismissed_%' ) );

