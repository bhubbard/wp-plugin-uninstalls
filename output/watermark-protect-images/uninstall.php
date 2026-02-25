<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iloveimg_images_to_restore');
delete_site_option('iloveimg_images_to_restore');
delete_option('iloveimg_options_watermark');
delete_site_option('iloveimg_options_watermark');
delete_option('iloveimg_options_is_watermark_image');
delete_site_option('iloveimg_options_is_watermark_image');
delete_option('iloveimg_account_error');
delete_site_option('iloveimg_account_error');
delete_option('iloveimg_account');
delete_site_option('iloveimg_account');
delete_option('iloveimg_proyect');
delete_site_option('iloveimg_proyect');
delete_option('iloveimg_options_compress');
delete_site_option('iloveimg_options_compress');
delete_option('iloveimg_user_is_migrated');
delete_site_option('iloveimg_user_is_migrated');

// Delete Transients
delete_transient('iloveimgwm_bulk_success');
delete_site_transient('iloveimgwm_bulk_success');
delete_transient('iloveimgwm_bulk_errors');
delete_site_transient('iloveimgwm_bulk_errors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iloveimg_status_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iloveimg_status_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iloveimg_status_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iloveimg_status_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iloveimg_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iloveimg_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iloveimg_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iloveimg_watermark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iloveimg_status_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iloveimg_status_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iloveimg_status_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iloveimg_status_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iloveimg_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iloveimg_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iloveimg_compress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iloveimg_compress' ) );

