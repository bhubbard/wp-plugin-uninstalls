<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whsfi_hide_show_featured_image_notice');
delete_site_option('whsfi_hide_show_featured_image_notice');
delete_option('whsfi_hide_all_image');
delete_site_option('whsfi_hide_all_image');
delete_option('whsfi_hide_admin_bar');
delete_site_option('whsfi_hide_admin_bar');
delete_option('whsfi_hide_howdy_text');
delete_site_option('whsfi_hide_howdy_text');
delete_option('whsfi_hide_admin_bar_logo');
delete_site_option('whsfi_hide_admin_bar_logo');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_whsfi_hide_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_whsfi_hide_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_whsfi_hide_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_whsfi_hide_featured' ) );

