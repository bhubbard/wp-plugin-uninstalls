<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('full_adaptive');
delete_site_option('full_adaptive');
delete_option('medium_crop');
delete_site_option('medium_crop');
delete_option('large_crop');
delete_site_option('large_crop');
delete_option('medium_adaptive');
delete_site_option('medium_adaptive');
delete_option('large_adaptive');
delete_site_option('large_adaptive');
delete_option('full_size_w');
delete_site_option('full_size_w');
delete_option('full_size_h');
delete_site_option('full_size_h');
delete_option('scissors_watermark_path');
delete_site_option('scissors_watermark_path');
delete_option('scissors_crop_defaultaspect');
delete_site_option('scissors_crop_defaultaspect');
delete_option('scissors_crop_useraspectx');
delete_site_option('scissors_crop_useraspectx');
delete_option('scissors_crop_useraspecty');
delete_site_option('scissors_crop_useraspecty');
delete_option('scissors_crop_defaultreir');
delete_site_option('scissors_crop_defaultreir');
delete_option('scissors_watermark_size');
delete_site_option('scissors_watermark_size');
delete_option('scissors_watermark_size_relative');
delete_site_option('scissors_watermark_size_relative');
delete_option('scissors_watermark_halign');
delete_site_option('scissors_watermark_halign');
delete_option('scissors_watermark_valign');
delete_site_option('scissors_watermark_valign');
delete_option('scissors_watermark_enabled');
delete_site_option('scissors_watermark_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'scissors_activation_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'scissors_activation_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'scissors_activation_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'scissors_activation_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scissors_watermarking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scissors_watermarking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scissors_watermarking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scissors_watermarking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scissors_watermarking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scissors_watermarking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scissors_watermarking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scissors_watermarking_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scissors_custom_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scissors_custom_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scissors_custom_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scissors_custom_images' ) );

