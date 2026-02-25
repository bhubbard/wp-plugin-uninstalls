<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tuta_store_url');
delete_site_option('tuta_store_url');
delete_option('tuta_store_id');
delete_site_option('tuta_store_id');
delete_option('tuta_onboarding_steps_completed');
delete_site_option('tuta_onboarding_steps_completed');
delete_option('tuta_onboarding_step');
delete_site_option('tuta_onboarding_step');
delete_option('tuta_onboarding_status');
delete_site_option('tuta_onboarding_status');
delete_option('tuta_onboarding_never_show');
delete_site_option('tuta_onboarding_never_show');
delete_option('tuta_selected_plan');
delete_site_option('tuta_selected_plan');
delete_option('tuta_current_plan_name');
delete_site_option('tuta_current_plan_name');
delete_option('tuta_last_products_sync');
delete_site_option('tuta_last_products_sync');
delete_option('tuta_selected_pages');
delete_site_option('tuta_selected_pages');
delete_option('tuta_last_pages_sync');
delete_site_option('tuta_last_pages_sync');
delete_option('tuta_web_chat_enabled');
delete_site_option('tuta_web_chat_enabled');
delete_option('tuta_web_chat_position');
delete_site_option('tuta_web_chat_position');
delete_option('tuta_web_chat_primary_color');
delete_site_option('tuta_web_chat_primary_color');
delete_option('tuta_web_chat_welcome_message');
delete_site_option('tuta_web_chat_welcome_message');
delete_option('tuta_web_chat_size');
delete_site_option('tuta_web_chat_size');
delete_option('tuta_whatsapp_status');
delete_site_option('tuta_whatsapp_status');
delete_option('tuta_current_plan');
delete_site_option('tuta_current_plan');
delete_option('tuta_store_status');
delete_site_option('tuta_store_status');
delete_option('tuta_api_key');
delete_site_option('tuta_api_key');
delete_option('tuta_last_products_sync_time');
delete_site_option('tuta_last_products_sync_time');
delete_option('tuta_last_pages_sync_time');
delete_site_option('tuta_last_pages_sync_time');
delete_option('tuta_api_url');
delete_site_option('tuta_api_url');
delete_option('tuta_edge_function_domain');
delete_site_option('tuta_edge_function_domain');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('tuta_access_token');
delete_site_transient('tuta_access_token');
delete_transient('tuta_subscription_success');
delete_site_transient('tuta_subscription_success');
delete_transient('tuta_subscription_error');
delete_site_transient('tuta_subscription_error');
delete_transient('tuta_plan_check');
delete_site_transient('tuta_plan_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tuta_pending_cart_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tuta_pending_cart_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tuta_pending_cart_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tuta_pending_cart_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tuta_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tuta_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tuta_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tuta_session_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tuta_generated_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tuta_generated_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tuta_generated_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tuta_generated_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tuta_visitor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tuta_visitor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tuta_visitor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tuta_visitor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tuta_visit_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tuta_visit_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tuta_visit_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tuta_visit_time' ) );

