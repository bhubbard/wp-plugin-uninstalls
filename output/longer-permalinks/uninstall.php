<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('longer-permalinks-pluginver');
delete_site_option('longer-permalinks-pluginver');
delete_option('longer-permalinks-wpver');
delete_site_option('longer-permalinks-wpver');
delete_option('longer-permalinks-dbver');
delete_site_option('longer-permalinks-dbver');
delete_option('longer-permalinks-backup-needed');
delete_site_option('longer-permalinks-backup-needed');
delete_option('longer-permalinks-revert-needed');
delete_site_option('longer-permalinks-revert-needed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'longer-permalinks-post-name-longer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'longer-permalinks-post-name-longer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'longer-permalinks-post-name-longer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'longer-permalinks-post-name-longer' ) );

