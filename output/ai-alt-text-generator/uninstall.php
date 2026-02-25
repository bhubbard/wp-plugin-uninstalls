<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aatg_is_processing');
delete_site_option('aatg_is_processing');
delete_option('aatg_processing_total');
delete_site_option('aatg_processing_total');
delete_option('aatg_processing_current');
delete_site_option('aatg_processing_current');
delete_option('aatg_text_generator_options');
delete_site_option('aatg_text_generator_options');

// Delete Transients
delete_transient('aatg_bulk_generation_ids');
delete_site_transient('aatg_bulk_generation_ids');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_process_media_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

