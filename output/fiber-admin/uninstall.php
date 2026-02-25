<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fiber_admin_db_version');
delete_site_option('fiber_admin_db_version');
delete_option('fiad_db_error');
delete_site_option('fiad_db_error');
delete_option('fiber_admin');
delete_site_option('fiber_admin');
delete_option('fiad_miscellaneous');
delete_site_option('fiad_miscellaneous');
delete_option('fiad_cpo');
delete_site_option('fiad_cpo');
delete_option('fiad_duplicate');
delete_site_option('fiad_duplicate');
delete_option('fiber-admin-white-label');
delete_site_option('fiber-admin-white-label');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

