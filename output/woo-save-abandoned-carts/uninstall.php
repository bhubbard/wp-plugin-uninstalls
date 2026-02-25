<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cartbounty_main_settings');
delete_site_option('cartbounty_main_settings');
delete_option('cartbounty_exit_intent_settings');
delete_site_option('cartbounty_exit_intent_settings');
delete_option('cartbounty_submitted_warnings');
delete_site_option('cartbounty_submitted_warnings');
delete_option('cartbounty_misc_settings');
delete_site_option('cartbounty_misc_settings');
delete_option('cartbounty_automation_steps');
delete_site_option('cartbounty_automation_steps');
delete_option('cartbounty_submitted_notices');
delete_site_option('cartbounty_submitted_notices');
delete_option('cartbounty_automation_settings');
delete_site_option('cartbounty_automation_settings');
delete_option('cartbounty_automation_sent_emails');
delete_site_option('cartbounty_automation_sent_emails');
delete_option('cartbounty_automation_sends');
delete_site_option('cartbounty_automation_sends');
delete_option('cartbounty_notification_frequency');
delete_site_option('cartbounty_notification_frequency');
delete_option('cartbounty_review_submitted');
delete_site_option('cartbounty_review_submitted');
delete_option('cartbounty_notification_email');
delete_site_option('cartbounty_notification_email');
delete_option('cartbounty_lift_email');
delete_site_option('cartbounty_lift_email');
delete_option('cartbounty_hide_images');
delete_site_option('cartbounty_hide_images');
delete_option('cartbounty_exclude_anonymous_carts');
delete_site_option('cartbounty_exclude_anonymous_carts');
delete_option('cartbounty_exclude_recovered');
delete_site_option('cartbounty_exclude_recovered');
delete_option('cartbounty_exit_intent_status');
delete_site_option('cartbounty_exit_intent_status');
delete_option('cartbounty_exit_intent_type');
delete_site_option('cartbounty_exit_intent_type');
delete_option('cartbounty_exit_intent_heading');
delete_site_option('cartbounty_exit_intent_heading');
delete_option('cartbounty_exit_intent_content');
delete_site_option('cartbounty_exit_intent_content');
delete_option('cartbounty_exit_intent_image');
delete_site_option('cartbounty_exit_intent_image');
delete_option('cartbounty_exit_intent_test_mode');
delete_site_option('cartbounty_exit_intent_test_mode');
delete_option('cartbounty_exit_intent_main_color');
delete_site_option('cartbounty_exit_intent_main_color');
delete_option('cartbounty_exit_intent_inverse_color');
delete_site_option('cartbounty_exit_intent_inverse_color');
delete_option('cartbounty_active_quick_stats');
delete_site_option('cartbounty_active_quick_stats');
delete_option('cartbounty_active_charts');
delete_site_option('cartbounty_active_charts');
delete_option('cartbounty_chart_type');
delete_site_option('cartbounty_chart_type');
delete_option('cartbounty_top_product_count');
delete_site_option('cartbounty_top_product_count');
delete_option('cartbounty_report_settings');
delete_site_option('cartbounty_report_settings');
delete_option('cartbounty_automation_from_name');
delete_site_option('cartbounty_automation_from_name');
delete_option('cartbounty_automation_from_email');
delete_site_option('cartbounty_automation_from_email');
delete_option('cartbounty_automation_reply_email');
delete_site_option('cartbounty_automation_reply_email');
delete_option('cartbounty_cron_warning');
delete_site_option('cartbounty_cron_warning');
delete_option('cartbounty_version_number');
delete_site_option('cartbounty_version_number');
delete_option('cartbounty_recoverable_cart_count');
delete_site_option('cartbounty_recoverable_cart_count');
delete_option('cartbounty_anonymous_cart_count');
delete_site_option('cartbounty_anonymous_cart_count');
delete_option('cartbounty_recovered_cart_count');
delete_site_option('cartbounty_recovered_cart_count');
delete_option('cartbounty_last_time_bubble_displayed');
delete_site_option('cartbounty_last_time_bubble_displayed');
delete_option('cartbounty_last_time_bubble_steps_displayed');
delete_site_option('cartbounty_last_time_bubble_steps_displayed');
delete_option('cartbounty_times_review_declined');
delete_site_option('cartbounty_times_review_declined');
delete_option('cartbounty_email_table_exists');
delete_site_option('cartbounty_email_table_exists');
delete_option('cartbounty_converted_minutes_to_miliseconds');
delete_site_option('cartbounty_converted_minutes_to_miliseconds');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('cartbounty_notification_sendout_hook');
wp_clear_scheduled_hook('cartbounty_sync_hook');
wp_clear_scheduled_hook('cartbounty_remove_empty_carts_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cartbounty_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cartbounty_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cartbounty_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cartbounty_carts_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cartbounty_unsupported_plugin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cartbounty_unsupported_plugin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cartbounty_unsupported_plugin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cartbounty_unsupported_plugin_notice' ) );

