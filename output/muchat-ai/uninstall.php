<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muchat_ai_chatbot_agent_id');
delete_site_option('muchat_ai_chatbot_agent_id');
delete_option('muchat_ai_chatbot_verify');
delete_site_option('muchat_ai_chatbot_verify');
delete_option('muchat_ai_chatbot_context');
delete_site_option('muchat_ai_chatbot_context');
delete_option('muchat_ai_chatbot_interface_initial_messages');
delete_site_option('muchat_ai_chatbot_interface_initial_messages');
delete_option('muchat_ai_chatbot_enable_guest_messages');
delete_site_option('muchat_ai_chatbot_enable_guest_messages');
delete_option('muchat_ai_chatbot_guest_initial_messages');
delete_site_option('muchat_ai_chatbot_guest_initial_messages');
delete_option('muchat_ai_chatbot_enable_guest_context');
delete_site_option('muchat_ai_chatbot_enable_guest_context');
delete_option('muchat_ai_chatbot_guest_context');
delete_site_option('muchat_ai_chatbot_guest_context');
delete_option('muchat_ai_chatbot_load_strategy');
delete_site_option('muchat_ai_chatbot_load_strategy');
delete_option('muchat_ai_chatbot_script_position');
delete_site_option('muchat_ai_chatbot_script_position');
delete_option('muchat_ai_chatbot_use_logged_in_user_info');
delete_site_option('muchat_ai_chatbot_use_logged_in_user_info');
delete_option('muchat_ai_chatbot_widget_enabled');
delete_site_option('muchat_ai_chatbot_widget_enabled');
delete_option('muchat_ai_chatbot_schedule_enabled');
delete_site_option('muchat_ai_chatbot_schedule_enabled');
delete_option('muchat_ai_chatbot_schedule_days');
delete_site_option('muchat_ai_chatbot_schedule_days');
delete_option('muchat_ai_chatbot_schedule_start_time');
delete_site_option('muchat_ai_chatbot_schedule_start_time');
delete_option('muchat_ai_chatbot_schedule_end_time');
delete_site_option('muchat_ai_chatbot_schedule_end_time');
delete_option('muchat_ai_chatbot_plugin_options');
delete_site_option('muchat_ai_chatbot_plugin_options');
delete_option('muchat_ai_chatbot_visibility_mode');
delete_site_option('muchat_ai_chatbot_visibility_mode');
delete_option('muchat_ai_chatbot_visibility_pages');
delete_site_option('muchat_ai_chatbot_visibility_pages');
delete_option('muchat_ai_chatbot_onboarding');
delete_site_option('muchat_ai_chatbot_onboarding');

// Delete Transients
delete_transient('muchat_connection_status');
delete_site_transient('muchat_connection_status');
delete_transient('muchat_product_meta_fields_cache');
delete_site_transient('muchat_product_meta_fields_cache');
delete_transient('muchat_ai_chatbot_plugin_cache');
delete_site_transient('muchat_ai_chatbot_plugin_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_muchat_previous_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_muchat_previous_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_muchat_previous_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_muchat_previous_data' ) );

