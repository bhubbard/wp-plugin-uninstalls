<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_compass_version');
delete_site_option('admin_compass_version');
delete_option('admin_compass_indexing_in_progress');
delete_site_option('admin_compass_indexing_in_progress');
delete_option('admin_compass_indexing_started');
delete_site_option('admin_compass_indexing_started');

// Delete Transients
delete_transient('admin_compass_reindex_admin_menu');
delete_site_transient('admin_compass_reindex_admin_menu');

// Clear Cron Jobs
wp_clear_scheduled_hook('admin_compass_rebuild_index');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

