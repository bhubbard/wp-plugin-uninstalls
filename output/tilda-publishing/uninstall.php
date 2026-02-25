<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tilda_maps');
delete_site_option('tilda_maps');
delete_option('tilda_map_pages');
delete_site_option('tilda_map_pages');
delete_option('tilda_options');
delete_site_option('tilda_options');
delete_option('tilda_projects');
delete_site_option('tilda_projects');
delete_option('tilda_pages');
delete_site_option('tilda_pages');

// Clear Cron Jobs
wp_clear_scheduled_hook('tilda_sync_single_event');
wp_clear_scheduled_hook('tilda_sync_single_export_file');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tilda' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tilda' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tilda' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tilda' ) );

