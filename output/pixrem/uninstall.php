<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixrem_last_backup');
delete_site_option('pixrem_last_backup');
delete_option('pixrem_delete_log');
delete_site_option('pixrem_delete_log');
delete_option('pixrem_deleted_logs');
delete_site_option('pixrem_deleted_logs');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('wpseo_social');
delete_site_option('wpseo_social');
delete_option('pixrem_scan_progress');
delete_site_option('pixrem_scan_progress');
delete_option('pixrem_whitelist_ids');
delete_site_option('pixrem_whitelist_ids');
delete_option('pixrem_whitelist_paths');
delete_site_option('pixrem_whitelist_paths');

// Delete Transients
delete_transient('pixrem_used_ids');
delete_site_transient('pixrem_used_ids');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );

