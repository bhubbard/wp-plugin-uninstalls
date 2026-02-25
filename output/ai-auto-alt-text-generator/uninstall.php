<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aatg_openai_api_key');
delete_site_option('aatg_openai_api_key');
delete_option('aatg_openai_model');
delete_site_option('aatg_openai_model');
delete_option('aatg_image_size');
delete_site_option('aatg_image_size');
delete_option('aatg_image_detail');
delete_site_option('aatg_image_detail');
delete_option('aatg_site_context');
delete_site_option('aatg_site_context');
delete_option('aatg_auto_title');
delete_site_option('aatg_auto_title');
delete_option('aatg_send_filename');
delete_site_option('aatg_send_filename');
delete_option('aatg_title_full_context');
delete_site_option('aatg_title_full_context');
delete_option('aatg_bulk_delay');
delete_site_option('aatg_bulk_delay');
delete_option('aatg_bulk_batch_size');
delete_site_option('aatg_bulk_batch_size');
delete_option('aatg_language');
delete_site_option('aatg_language');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

