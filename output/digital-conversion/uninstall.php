<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('digital_conversion_version');
delete_site_option('digital_conversion_version');
delete_option('digital_conversion_db_version');
delete_site_option('digital_conversion_db_version');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_terms_page_id');
delete_site_option('woocommerce_terms_page_id');
delete_option('woocommerce_privacy_policy_page_id');
delete_site_option('woocommerce_privacy_policy_page_id');
delete_option('digital_conversion_enabled');
delete_site_option('digital_conversion_enabled');
delete_option('digital_conversion_api_key');
delete_site_option('digital_conversion_api_key');
delete_option('digital_conversion_opt_in_enabled');
delete_site_option('digital_conversion_opt_in_enabled');
delete_option('digital_conversion_opt_in_title');
delete_site_option('digital_conversion_opt_in_title');
delete_option('digital_conversion_opt_in_message');
delete_site_option('digital_conversion_opt_in_message');
delete_option('digital_conversion_opt_in_position');
delete_site_option('digital_conversion_opt_in_position');
delete_option('digital_conversion_opt_in_bg_color');
delete_site_option('digital_conversion_opt_in_bg_color');
delete_option('digital_conversion_opt_in_text_color');
delete_site_option('digital_conversion_opt_in_text_color');
delete_option('digital_conversion_opt_in_btn_bg_color');
delete_site_option('digital_conversion_opt_in_btn_bg_color');
delete_option('digital_conversion_opt_in_btn_text_color');
delete_site_option('digital_conversion_opt_in_btn_text_color');
delete_option('digital_conversion_opt_in_confirm_text');
delete_site_option('digital_conversion_opt_in_confirm_text');
delete_option('digital_conversion_opt_in_cancel_text');
delete_site_option('digital_conversion_opt_in_cancel_text');
delete_option('digital_conversion_opt_in_suppression_time');
delete_site_option('digital_conversion_opt_in_suppression_time');
delete_option('digital_conversion_opt_in_image');
delete_site_option('digital_conversion_opt_in_image');
delete_option('digital_conversion_notification_icon');
delete_site_option('digital_conversion_notification_icon');
delete_option('digital_conversion_notification_badge');
delete_site_option('digital_conversion_notification_badge');
delete_option('digital_conversion_topics_mapping');
delete_site_option('digital_conversion_topics_mapping');
delete_option('digital_conversion_topics_enabled');
delete_site_option('digital_conversion_topics_enabled');
delete_option('digital_conversion_templates_mapping');
delete_site_option('digital_conversion_templates_mapping');
delete_option('digital_conversion_templates_enabled');
delete_site_option('digital_conversion_templates_enabled');
delete_option('digital_conversion_specific_pages_topics');
delete_site_option('digital_conversion_specific_pages_topics');
delete_option('digital_conversion_vapid_public_key');
delete_site_option('digital_conversion_vapid_public_key');
delete_option('digital_conversion_woocommerce_topics');
delete_site_option('digital_conversion_woocommerce_topics');
delete_option('digital_conversion_api_status');
delete_site_option('digital_conversion_api_status');
delete_option('digital_conversion_api_status_changed');
delete_site_option('digital_conversion_api_status_changed');
delete_option('digital_conversion_last_health_check');
delete_site_option('digital_conversion_last_health_check');
delete_option('digital_conversion_sync_stats');
delete_site_option('digital_conversion_sync_stats');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('digital_conversion_api_status');
delete_site_transient('digital_conversion_api_status');
delete_transient('digital_conversion_site_id');
delete_site_transient('digital_conversion_site_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('digital_conversion_cleanup');
wp_clear_scheduled_hook('digital_conversion_sync_data');
wp_clear_scheduled_hook('digital_conversion_sync_subscriptions');
wp_clear_scheduled_hook('digital_conversion_cleanup_data');
wp_clear_scheduled_hook('digital_conversion_send_notifications');
wp_clear_scheduled_hook('digital_conversion_sync_pending');
wp_clear_scheduled_hook('digital_conversion_heartbeat');
wp_clear_scheduled_hook('digital_conversion_process_cart_abandonments');
wp_clear_scheduled_hook('digital_conversion_cleanup_cart_events');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digital_conversion_custom_subscription_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digital_conversion_custom_subscription_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digital_conversion_custom_subscription_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digital_conversion_custom_subscription_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digital_conversion_custom_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digital_conversion_custom_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digital_conversion_custom_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digital_conversion_custom_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digital_conversion_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digital_conversion_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digital_conversion_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digital_conversion_custom_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digital_conversion_custom_confirm_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digital_conversion_custom_confirm_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digital_conversion_custom_confirm_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digital_conversion_custom_confirm_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digital_conversion_custom_cancel_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digital_conversion_custom_cancel_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digital_conversion_custom_cancel_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digital_conversion_custom_cancel_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digital_conversion_custom_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digital_conversion_custom_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digital_conversion_custom_topic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digital_conversion_custom_topic' ) );

