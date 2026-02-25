<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocket_exclude_js');
delete_site_option('rocket_exclude_js');
delete_option('rocket_exclude_defer_js');
delete_site_option('rocket_exclude_defer_js');
delete_option('rocket_delay_js_exclusions');
delete_site_option('rocket_delay_js_exclusions');
delete_option('autoptimize_js_exclude');
delete_site_option('autoptimize_js_exclude');
delete_option('litespeed.conf.optm-js_excludes');
delete_site_option('litespeed.conf.optm-js_excludes');
delete_option('litespeed.conf.optm-js_defer_excludes');
delete_site_option('litespeed.conf.optm-js_defer_excludes');
delete_option('wpo_minify_js_excludes');
delete_site_option('wpo_minify_js_excludes');
delete_option('wpo_minify_js_noptimize');
delete_site_option('wpo_minify_js_noptimize');
delete_option('dori-chatbot-onboarding-completed');
delete_site_option('dori-chatbot-onboarding-completed');
delete_option('dori-chatbot-integrate');
delete_site_option('dori-chatbot-integrate');
delete_option('dori-chatbot-sharing-id');
delete_site_option('dori-chatbot-sharing-id');
delete_option('dori-chatbot-client-id');
delete_site_option('dori-chatbot-client-id');
delete_option('dori-chatbot-temp-user-id');
delete_site_option('dori-chatbot-temp-user-id');
delete_option('dori-chatbot-user-phone');
delete_site_option('dori-chatbot-user-phone');
delete_option('dori-chatbot-client-secret');
delete_site_option('dori-chatbot-client-secret');
delete_option('dori-chatbot-wc-consumer-key');
delete_site_option('dori-chatbot-wc-consumer-key');
delete_option('dori-chatbot-wc-consumer-secret');
delete_site_option('dori-chatbot-wc-consumer-secret');
delete_option('dori-chatbot-version');
delete_site_option('dori-chatbot-version');
delete_option('dori_chatbot_auto_update');
delete_site_option('dori_chatbot_auto_update');
delete_option('dori_chatbot_last_update');
delete_site_option('dori_chatbot_last_update');
delete_option('dori_chatbot_update_error');
delete_site_option('dori_chatbot_update_error');
delete_option('dori_chatbot_last_update_check');
delete_site_option('dori_chatbot_last_update_check');

// Delete Transients
delete_transient('dori-chatbot-extract-response-data');
delete_site_transient('dori-chatbot-extract-response-data');
delete_transient('dori-chatbot-bot-creation-retries');
delete_site_transient('dori-chatbot-bot-creation-retries');
delete_transient('dori-chatbot-bot-creation-status');
delete_site_transient('dori-chatbot-bot-creation-status');
delete_transient('dori_chatbot_product_count');
delete_site_transient('dori_chatbot_product_count');
delete_transient('dori-chatbot-bot-creation-error');
delete_site_transient('dori-chatbot-bot-creation-error');
delete_transient('dori_chatbot_cache');
delete_site_transient('dori_chatbot_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('dori_chatbot_send_order_data');
wp_clear_scheduled_hook('dori_chatbot_send_cart_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dori_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dori_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dori_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dori_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dori_current_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dori_current_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dori_current_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dori_current_thread_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dori_session_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dori_session_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dori_session_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dori_session_key' ) );

