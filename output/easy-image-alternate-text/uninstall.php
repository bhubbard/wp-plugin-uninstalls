<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_image_alternate_text_api_key');
delete_site_option('easy_image_alternate_text_api_key');
delete_option('easy_image_alternate_text_api_notice_dismissed');
delete_site_option('easy_image_alternate_text_api_notice_dismissed');
delete_option('easy_image_alternate_text_endpoint');
delete_site_option('easy_image_alternate_text_endpoint');
delete_option('easy_image_alternate_text_confidence');
delete_site_option('easy_image_alternate_text_confidence');
delete_option('easy_image_alternate_text_cron_interval');
delete_site_option('easy_image_alternate_text_cron_interval');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

