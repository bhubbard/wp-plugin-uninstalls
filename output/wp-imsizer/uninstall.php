<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_imsizer_wplimit_onoff');
delete_site_option('wp_imsizer_wplimit_onoff');
delete_option('wp_imsizer_onoff');
delete_site_option('wp_imsizer_onoff');
delete_option('wp_imsizer_width');
delete_site_option('wp_imsizer_width');
delete_option('wp_imsizer_height');
delete_site_option('wp_imsizer_height');
delete_option('wp_imsizer_setalts');
delete_site_option('wp_imsizer_setalts');
delete_option('wp_imsizer_setname');
delete_site_option('wp_imsizer_setname');
delete_option('wp_imsizer_setcapt');
delete_site_option('wp_imsizer_setcapt');
delete_option('wp_imsizer_setdesc');
delete_site_option('wp_imsizer_setdesc');
delete_option('wp_imsizer_restrict_size');
delete_site_option('wp_imsizer_restrict_size');
delete_option('wp_imsizer_max_file_size');
delete_site_option('wp_imsizer_max_file_size');
delete_option('wp_imsizer_file_size_error');
delete_site_option('wp_imsizer_file_size_error');
delete_option('wp_imsizer_convertpng_yesno');
delete_site_option('wp_imsizer_convertpng_yesno');
delete_option('wp_imsizer_width ');
delete_site_option('wp_imsizer_width ');
delete_option('wp_imsizer_height ');
delete_site_option('wp_imsizer_height ');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

