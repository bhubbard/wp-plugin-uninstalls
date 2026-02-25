<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mb_template');
delete_site_option('mb_template');
delete_option('mb_nav_format');
delete_site_option('mb_nav_format');
delete_option('mb_easing');
delete_site_option('mb_easing');
delete_option('mb_start_panel');
delete_site_option('mb_start_panel');
delete_option('mb_width');
delete_site_option('mb_width');
delete_option('mb_panel_width');
delete_site_option('mb_panel_width');
delete_option('mb_reduced_size');
delete_site_option('mb_reduced_size');
delete_option('mb_fixed_height');
delete_site_option('mb_fixed_height');
delete_option('mb_speed');
delete_site_option('mb_speed');
delete_option('mb_wrap');
delete_site_option('mb_wrap');
delete_option('mb_hash_tags');
delete_site_option('mb_hash_tags');
delete_option('mb_show_nav');
delete_site_option('mb_show_nav');
delete_option('mb_structure');
delete_site_option('mb_structure');
delete_option('mb_current_class');
delete_site_option('mb_current_class');
delete_option('mb_tooltip');
delete_site_option('mb_tooltip');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mb_all_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mb_all_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mb_all_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mb_all_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mb_active_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mb_active_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mb_active_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mb_active_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

