<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moceanapi_abandoned_carts_hide_images');
delete_site_option('moceanapi_abandoned_carts_hide_images');
delete_option('moceanapi_abandoned_carts_bulk_email_content');
delete_site_option('moceanapi_abandoned_carts_bulk_email_content');
delete_option('moceanapi_abandoned_carts_key');
delete_site_option('moceanapi_abandoned_carts_key');
delete_option('moceanapi_abandoned_carts_secret');
delete_site_option('moceanapi_abandoned_carts_secret');
delete_option('moceanapi_abandoned_carts_from');
delete_site_option('moceanapi_abandoned_carts_from');
delete_option('moceanapi_abandoned_carts_bulk_content');
delete_site_option('moceanapi_abandoned_carts_bulk_content');
delete_option('moceanapi_abandoned_carts_lift_email');
delete_site_option('moceanapi_abandoned_carts_lift_email');
delete_option('moceanapi_abandoned_carts_exclude_ghost_carts');
delete_site_option('moceanapi_abandoned_carts_exclude_ghost_carts');
delete_option('moceanapi_abandoned_carts_email_content');
delete_site_option('moceanapi_abandoned_carts_email_content');
delete_option('moceanapi_abandoned_carts_notification_email');
delete_site_option('moceanapi_abandoned_carts_notification_email');
delete_option('moceanapi_abandoned_carts_notification_frequency');
delete_site_option('moceanapi_abandoned_carts_notification_frequency');
delete_option('moceanapi_abandoned_carts_content');
delete_site_option('moceanapi_abandoned_carts_content');
delete_option('moceanapi_abandoned_carts_notification_sms');
delete_site_option('moceanapi_abandoned_carts_notification_sms');
delete_option('moceanapi_abandoned_carts_sms_notification_frequency');
delete_site_option('moceanapi_abandoned_carts_sms_notification_frequency');
delete_option('moceanapi_abandoned_carts_exit_intent_status');
delete_site_option('moceanapi_abandoned_carts_exit_intent_status');
delete_option('moceanapi_abandoned_carts_exit_intent_test_mode');
delete_site_option('moceanapi_abandoned_carts_exit_intent_test_mode');
delete_option('moceanapi_abandoned_carts_exit_intent_type');
delete_site_option('moceanapi_abandoned_carts_exit_intent_type');
delete_option('moceanapi_abandoned_carts_exit_intent_main_color');
delete_site_option('moceanapi_abandoned_carts_exit_intent_main_color');
delete_option('moceanapi_abandoned_carts_exit_intent_inverse_color');
delete_site_option('moceanapi_abandoned_carts_exit_intent_inverse_color');
delete_option('moceanapi_abandoned_carts_exit_intent_image');
delete_site_option('moceanapi_abandoned_carts_exit_intent_image');
delete_option('moceanapi_abandoned_carts_version_number');
delete_site_option('moceanapi_abandoned_carts_version_number');
delete_option('moceanapi_abandoned_carts_recoverable_cart_count');
delete_site_option('moceanapi_abandoned_carts_recoverable_cart_count');
delete_option('moceanapi_abandoned_carts_transferred_table');
delete_site_option('moceanapi_abandoned_carts_transferred_table');
delete_option('wclcfc_review_submitted');
delete_site_option('wclcfc_review_submitted');
delete_option('wclcfc_version_number');
delete_site_option('wclcfc_version_number');
delete_option('wclcfc_captured_abandoned_cart_count');
delete_site_option('wclcfc_captured_abandoned_cart_count');
delete_option('moceanapi_abandoned_carts_captured_abandoned_cart_count');
delete_site_option('moceanapi_abandoned_carts_captured_abandoned_cart_count');
delete_option('wclcfc_times_review_declined');
delete_site_option('wclcfc_times_review_declined');
delete_option('moceanapi_abandoned_carts_times_review_declined');
delete_site_option('moceanapi_abandoned_carts_times_review_declined');
delete_option('wclcfc_exit_intent_status');
delete_site_option('wclcfc_exit_intent_status');
delete_option('wclcfc_exit_intent_test_mode');
delete_site_option('wclcfc_exit_intent_test_mode');
delete_option('wclcfc_exit_intent_type');
delete_site_option('wclcfc_exit_intent_type');
delete_option('wclcfc_exit_intent_main_color');
delete_site_option('wclcfc_exit_intent_main_color');
delete_option('wclcfc_exit_intent_inverse_color');
delete_site_option('wclcfc_exit_intent_inverse_color');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('moceanapi_abandoned_carts_ghost_cart_count');
delete_site_option('moceanapi_abandoned_carts_ghost_cart_count');
delete_option('moceanapi_abandoned_carts_carts_per_page');
delete_site_option('moceanapi_abandoned_carts_carts_per_page');

// Delete Transients
delete_transient('moceanapi_abandoned_carts_recoverable_cart_count');
delete_site_transient('moceanapi_abandoned_carts_recoverable_cart_count');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('moceanapi_abandoned_carts_notification_sendout_hook');
wp_clear_scheduled_hook('moceanapi_abandoned_carts_sms_auto_sendout_hook');
wp_clear_scheduled_hook('moceanapi_abandoned_carts_remove_empty_carts_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'moceanapi_abandoned_carts_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'moceanapi_abandoned_carts_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'moceanapi_abandoned_carts_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'moceanapi_abandoned_carts_carts_per_page' ) );

