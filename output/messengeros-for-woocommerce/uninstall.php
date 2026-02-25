<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('messos_woocommerce_forms_settings');
delete_site_option('messos_woocommerce_forms_settings');
delete_option('messos_woocommerce_api_settings');
delete_site_option('messos_woocommerce_api_settings');
delete_option('messos_woocommerce_last_product_sync');
delete_site_option('messos_woocommerce_last_product_sync');
delete_option('messengeros_cart_automation_enabled');
delete_site_option('messengeros_cart_automation_enabled');
delete_option('messengeros_woocommerce_store_id');
delete_site_option('messengeros_woocommerce_store_id');
delete_option('messengeros_events_api_key');
delete_site_option('messengeros_events_api_key');
delete_option('messengeros_events_api_secret');
delete_site_option('messengeros_events_api_secret');
delete_option('messengeros_store_id');
delete_site_option('messengeros_store_id');
delete_option('messengeros_store_uuid');
delete_site_option('messengeros_store_uuid');
delete_option('messengeros_woocommerce_dw_api_key');
delete_site_option('messengeros_woocommerce_dw_api_key');
delete_option('messengeros_woocommerce_dw_api_secret');
delete_site_option('messengeros_woocommerce_dw_api_secret');
delete_option('messengeros_woocommerce_dw_webhook_secret');
delete_site_option('messengeros_woocommerce_dw_webhook_secret');
delete_option('messengeros_woocommerce_dw_endpoints');
delete_site_option('messengeros_woocommerce_dw_endpoints');
delete_option('messengeros_woocommerce_events_endpoints');
delete_site_option('messengeros_woocommerce_events_endpoints');
delete_option('messengeros_track_page_views');
delete_site_option('messengeros_track_page_views');
delete_option('messengeros_events_endpoints');
delete_site_option('messengeros_events_endpoints');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('messengeros_woocommerce_needs_initial_sync');
delete_site_option('messengeros_woocommerce_needs_initial_sync');
delete_option('messengeros_woocommerce_initial_sync_status');
delete_site_option('messengeros_woocommerce_initial_sync_status');
delete_option('messengeros_woocommerce_initial_sync_start');
delete_site_option('messengeros_woocommerce_initial_sync_start');
delete_option('messengeros_woocommerce_initial_sync_total');
delete_site_option('messengeros_woocommerce_initial_sync_total');
delete_option('messengeros_woocommerce_initial_sync_progress');
delete_site_option('messengeros_woocommerce_initial_sync_progress');
delete_option('messengeros_woocommerce_initial_sync_end');
delete_site_option('messengeros_woocommerce_initial_sync_end');
delete_option('messengeros_woocommerce_initial_sync_results');
delete_site_option('messengeros_woocommerce_initial_sync_results');
delete_option('messengeros_woocommerce_sync_notice_dismissed');
delete_site_option('messengeros_woocommerce_sync_notice_dismissed');
delete_option('messos_woocommerce_oauth_client_id');
delete_site_option('messos_woocommerce_oauth_client_id');
delete_option('messos_woocommerce_oauth_client_secret');
delete_site_option('messos_woocommerce_oauth_client_secret');
delete_option('messos_woocommerce_oauth_auto_registered');
delete_site_option('messos_woocommerce_oauth_auto_registered');
delete_option('messos_woocommerce_last_registration_attempt');
delete_site_option('messos_woocommerce_last_registration_attempt');
delete_option('messengeros_woocommerce_events_api_key');
delete_site_option('messengeros_woocommerce_events_api_key');
delete_option('messengeros_woocommerce_events_api_secret');
delete_site_option('messengeros_woocommerce_events_api_secret');
delete_option('messengeros_flush_rewrite_rules');
delete_site_option('messengeros_flush_rewrite_rules');
delete_option('messos_woocommerce_oauth_credentials');
delete_site_option('messos_woocommerce_oauth_credentials');
delete_option('messos_woocommerce_oauth_state');
delete_site_option('messos_woocommerce_oauth_state');
delete_option('messos_woocommerce_dw_api_key');
delete_site_option('messos_woocommerce_dw_api_key');
delete_option('messos_woocommerce_dw_api_secret');
delete_site_option('messos_woocommerce_dw_api_secret');
delete_option('messos_woocommerce_dw_webhook_secret');
delete_site_option('messos_woocommerce_dw_webhook_secret');
delete_option('messos_woocommerce_dw_endpoints');
delete_site_option('messos_woocommerce_dw_endpoints');
delete_option('messos_woocommerce_events_api_key');
delete_site_option('messos_woocommerce_events_api_key');
delete_option('messos_woocommerce_events_api_secret');
delete_site_option('messos_woocommerce_events_api_secret');
delete_option('messos_woocommerce_events_endpoints');
delete_site_option('messos_woocommerce_events_endpoints');
delete_option('messos_woocommerce_store_id');
delete_site_option('messos_woocommerce_store_id');
delete_option('messos_woocommerce_needs_initial_sync');
delete_site_option('messos_woocommerce_needs_initial_sync');
delete_option('messos_woocommerce_initial_sync_status');
delete_site_option('messos_woocommerce_initial_sync_status');
delete_option('messos_woocommerce_initial_sync_start');
delete_site_option('messos_woocommerce_initial_sync_start');
delete_option('messos_woocommerce_initial_sync_end');
delete_site_option('messos_woocommerce_initial_sync_end');
delete_option('messos_woocommerce_initial_sync_total');
delete_site_option('messos_woocommerce_initial_sync_total');
delete_option('messos_woocommerce_initial_sync_progress');
delete_site_option('messos_woocommerce_initial_sync_progress');
delete_option('messos_woocommerce_initial_sync_results');
delete_site_option('messos_woocommerce_initial_sync_results');
delete_option('messos_woocommerce_sync_notice_dismissed');
delete_site_option('messos_woocommerce_sync_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('messos_woocommerce_scheduled_product_sync');
wp_clear_scheduled_hook('messengeros_woocommerce_perform_initial_sync');
wp_clear_scheduled_hook('messengeros_woocommerce_check_initial_sync');
wp_clear_scheduled_hook('messos_woocommerce_check_token_validity');
wp_clear_scheduled_hook('messos_send_webhook');
wp_clear_scheduled_hook('messengeros_check_initial_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_demo_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_demo_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_demo_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_demo_image_url' ) );

