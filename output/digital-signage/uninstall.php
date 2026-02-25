<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('digsign_image_width');
delete_site_option('digsign_image_width');
delete_option('digsign_image_height');
delete_site_option('digsign_image_height');
delete_option('digsign_category_name');
delete_site_option('digsign_category_name');
delete_option('digsign_refresh_interval');
delete_site_option('digsign_refresh_interval');
delete_option('digsign_slide_delay');
delete_site_option('digsign_slide_delay');
delete_option('digsign_enable_qrcodes');
delete_site_option('digsign_enable_qrcodes');
delete_option('digsign_layout_type');
delete_site_option('digsign_layout_type');
delete_option('dsp_category_name');
delete_site_option('dsp_category_name');
delete_option('digsign_header_content');
delete_site_option('digsign_header_content');
delete_option('digsign_right_panel_content');
delete_site_option('digsign_right_panel_content');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );

