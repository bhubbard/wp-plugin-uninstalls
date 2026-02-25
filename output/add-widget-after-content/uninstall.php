<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('all_post_categories');
delete_site_option('all_post_categories');
delete_option('all_post_types');
delete_site_option('all_post_types');
delete_option('all_post_formats');
delete_site_option('all_post_formats');
delete_option('awac_priority');
delete_site_option('awac_priority');
delete_option('awac_styles');
delete_site_option('awac_styles');
delete_option('awac_extensions');
delete_site_option('awac_extensions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_awac_hide_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_awac_hide_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_awac_hide_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_awac_hide_widget' ) );

