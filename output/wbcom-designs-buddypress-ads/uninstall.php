<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_ads_rotator_admin_welcome_options');
delete_site_option('wb_ads_rotator_admin_welcome_options');
delete_option('buddypress-ads-rotator_admin_faq_option');
delete_site_option('buddypress-ads-rotator_admin_faq_option');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('wb_ads_image_id');
delete_site_option('wb_ads_image_id');

// Delete Transients
delete_transient('_wb_ads_rotator_is_new_install');
delete_site_transient('_wb_ads_rotator_is_new_install');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wb_ads_rotator_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wb_ads_rotator_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wb_ads_rotator_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wb_ads_rotator_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wb_ads_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wb_ads_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wb_ads_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wb_ads_enable' ) );

