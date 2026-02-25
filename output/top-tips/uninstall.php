<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('giltoptips_image');
delete_site_option('giltoptips_image');
delete_option('giltoptips_bg_colour');
delete_site_option('giltoptips_bg_colour');
delete_option('giltoptips_h_colour');
delete_site_option('giltoptips_h_colour');
delete_option('giltoptips_txt_colour');
delete_site_option('giltoptips_txt_colour');
delete_option('giltoptips_a_colour');
delete_site_option('giltoptips_a_colour');
delete_option('giltoptips_ahov_colour');
delete_site_option('giltoptips_ahov_colour');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_giltoptips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_giltoptips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_giltoptips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_giltoptips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gil_top_tips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gil_top_tips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gil_top_tips_url_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gil_top_tips_url_value_key' ) );

