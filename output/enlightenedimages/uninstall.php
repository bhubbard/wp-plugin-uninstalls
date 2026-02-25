<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elim_api_key');
delete_site_option('elim_api_key');
delete_option('elim_azure_endpoint');
delete_site_option('elim_azure_endpoint');
delete_option('elim_pro');
delete_site_option('elim_pro');
delete_option('elim_pro_plugin');
delete_site_option('elim_pro_plugin');
delete_option('elim_pro_api_key');
delete_site_option('elim_pro_api_key');
delete_option('elim_on_media_upload');
delete_site_option('elim_on_media_upload');
delete_option('elim_alt_text');
delete_site_option('elim_alt_text');
delete_option('elim_labels');
delete_site_option('elim_labels');
delete_option('elim_text');
delete_site_option('elim_text');
delete_option('elim_logos');
delete_site_option('elim_logos');
delete_option('elim_landmarks');
delete_site_option('elim_landmarks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elim_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elim_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elim_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elim_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

