<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saw_scroll_options');
delete_site_option('saw_scroll_options');
delete_option('saw_speed_options');
delete_site_option('saw_speed_options');
delete_option('saw_trans_options');
delete_site_option('saw_trans_options');
delete_option('saw_width_options');
delete_site_option('saw_width_options');
delete_option('saw_height_options');
delete_site_option('saw_height_options');
delete_option('saw_text_color_options');
delete_site_option('saw_text_color_options');
delete_option('saw_link_color_options');
delete_site_option('saw_link_color_options');
delete_option('saw_order_options');
delete_site_option('saw_order_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'saw_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'saw_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'saw_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'saw_start_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'saw_end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'saw_end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'saw_end_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'saw_end_date' ) );

