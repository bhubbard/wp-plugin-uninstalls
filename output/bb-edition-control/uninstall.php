<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbec-posttypes');
delete_site_option('bbec-posttypes');
delete_option('bbec-posttype');
delete_site_option('bbec-posttype');
delete_option('bbec-templates');
delete_site_option('bbec-templates');
delete_option('bbec-edition-format');
delete_site_option('bbec-edition-format');
delete_option('wp_admin_notifications');
delete_site_option('wp_admin_notifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bb_edition_control' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bb_edition_control' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bb_edition_control' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bb_edition_control' ) );

