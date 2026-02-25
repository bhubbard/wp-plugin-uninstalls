<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alt_text_magic_account_type');
delete_site_option('alt_text_magic_account_type');
delete_option('alt_text_magic_image_credit_count');
delete_site_option('alt_text_magic_image_credit_count');
delete_option('alt_text_magic_image_credit_limit');
delete_site_option('alt_text_magic_image_credit_limit');
delete_option('alt_text_magic_monthly_image_count');
delete_site_option('alt_text_magic_monthly_image_count');
delete_option('alt_text_magic_monthly_image_limit');
delete_site_option('alt_text_magic_monthly_image_limit');
delete_option('alt_text_magic_status');
delete_site_option('alt_text_magic_status');
delete_option('alt_text_magic_batch_in_progress');
delete_site_option('alt_text_magic_batch_in_progress');
delete_option('alt_text_magic_batch_current_idx');
delete_site_option('alt_text_magic_batch_current_idx');
delete_option('alt_text_magic_batch_total_images');
delete_site_option('alt_text_magic_batch_total_images');
delete_option('alt_text_magic_batch_result');
delete_site_option('alt_text_magic_batch_result');
delete_option('alt_text_magic_total_images');
delete_site_option('alt_text_magic_total_images');
delete_option('alt_text_magic_images_missing_alt_text');
delete_site_option('alt_text_magic_images_missing_alt_text');
delete_option('alt_text_magic_bulk_suggestions');
delete_site_option('alt_text_magic_bulk_suggestions');
delete_option('alt_text_magic_batch_timestamp');
delete_site_option('alt_text_magic_batch_timestamp');
delete_option('alt_text_magic_image_limit_notification_dismissed');
delete_site_option('alt_text_magic_image_limit_notification_dismissed');
delete_option('alt_text_magic_invalid_api_key_notification_dismissed');
delete_site_option('alt_text_magic_invalid_api_key_notification_dismissed');
delete_option('alt_text_magic_language');
delete_site_option('alt_text_magic_language');
delete_option('alt_text_magic_generate_on_upload');
delete_site_option('alt_text_magic_generate_on_upload');
delete_option('alt_text_magic_api_key');
delete_site_option('alt_text_magic_api_key');
delete_option('alt_text_magic_api_key_is_invalid');
delete_site_option('alt_text_magic_api_key_is_invalid');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

