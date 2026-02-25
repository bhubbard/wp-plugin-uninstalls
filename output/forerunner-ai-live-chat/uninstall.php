<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forerunner_font_size_base');
delete_site_option('forerunner_font_size_base');
delete_option('forerunner_font_size_header');
delete_site_option('forerunner_font_size_header');
delete_option('forerunner_font_family');
delete_site_option('forerunner_font_family');
delete_option('forerunner_font_weight');
delete_site_option('forerunner_font_weight');
delete_option('forerunner_button_bg_color');
delete_site_option('forerunner_button_bg_color');
delete_option('forerunner_button_hover_color');
delete_site_option('forerunner_button_hover_color');
delete_option('forerunner_voice_connecting_color');
delete_site_option('forerunner_voice_connecting_color');
delete_option('forerunner_voice_active_color');
delete_site_option('forerunner_voice_active_color');
delete_option('forerunner_chat_bubble_user_color');
delete_site_option('forerunner_chat_bubble_user_color');
delete_option('forerunner_header_gradient_start_color');
delete_site_option('forerunner_header_gradient_start_color');
delete_option('forerunner_header_gradient_end_color');
delete_site_option('forerunner_header_gradient_end_color');
delete_option('forerunner_widget_width');
delete_site_option('forerunner_widget_width');
delete_option('forerunner_widget_height');
delete_site_option('forerunner_widget_height');
delete_option('forerunner_maximized_width');
delete_site_option('forerunner_maximized_width');
delete_option('forerunner_maximized_height');
delete_site_option('forerunner_maximized_height');
delete_option('forerunner_noise_sensitivity');
delete_site_option('forerunner_noise_sensitivity');
delete_option('forerunner_interruption_sensitivity');
delete_site_option('forerunner_interruption_sensitivity');
delete_option('forerunner_voice_timeout');
delete_site_option('forerunner_voice_timeout');
delete_option('forerunner_enable_voice_debugging');
delete_site_option('forerunner_enable_voice_debugging');
delete_option('forerunner_greeting_font_size');
delete_site_option('forerunner_greeting_font_size');
delete_option('forerunner_ai_live_chat_bot_icon_type');
delete_site_option('forerunner_ai_live_chat_bot_icon_type');
delete_option('forerunner_ai_live_chat_bot_icon_custom');
delete_site_option('forerunner_ai_live_chat_bot_icon_custom');
delete_option('forerunner_ai_live_chat_webhook');
delete_site_option('forerunner_ai_live_chat_webhook');
delete_option('forerunner_webhook_auth_type');
delete_site_option('forerunner_webhook_auth_type');
delete_option('forerunner_ai_live_chat_ai_name');
delete_site_option('forerunner_ai_live_chat_ai_name');
delete_option('forerunner_ai_live_chat_header_title');
delete_site_option('forerunner_ai_live_chat_header_title');
delete_option('forerunner_ai_live_chat_header_subtitle');
delete_site_option('forerunner_ai_live_chat_header_subtitle');
delete_option('forerunner_ai_live_chat_disclaimer_text');
delete_site_option('forerunner_ai_live_chat_disclaimer_text');
delete_option('forerunner_ai_live_chat_disclaimer_secondary_text');
delete_site_option('forerunner_ai_live_chat_disclaimer_secondary_text');
delete_option('forerunner_ai_live_chat_greeting_message');
delete_site_option('forerunner_ai_live_chat_greeting_message');
delete_option('forerunner_greeting_enabled');
delete_site_option('forerunner_greeting_enabled');
delete_option('forerunner_greeting_delay');
delete_site_option('forerunner_greeting_delay');
delete_option('forerunner_greeting_animation');
delete_site_option('forerunner_greeting_animation');
delete_option('forerunner_ai_live_chat_input_placeholder');
delete_site_option('forerunner_ai_live_chat_input_placeholder');
delete_option('forerunner_webhook_request_field');
delete_site_option('forerunner_webhook_request_field');
delete_option('forerunner_webhook_response_field');
delete_site_option('forerunner_webhook_response_field');
delete_option('forerunner_webhook_timeout');
delete_site_option('forerunner_webhook_timeout');
delete_option('forerunner_webhook_auth_header_name');
delete_site_option('forerunner_webhook_auth_header_name');
delete_option('forerunner_webhook_auth_header_value');
delete_site_option('forerunner_webhook_auth_header_value');
delete_option('forerunner_webhook_auth_query_param');
delete_site_option('forerunner_webhook_auth_query_param');
delete_option('forerunner_webhook_auth_query_value');
delete_site_option('forerunner_webhook_auth_query_value');
delete_option('forerunner_ai_live_chat_quick_actions');
delete_site_option('forerunner_ai_live_chat_quick_actions');
delete_option('forerunner_ai_live_chat_voice_enabled');
delete_site_option('forerunner_ai_live_chat_voice_enabled');
delete_option('forerunner_ai_live_chat_license_key');
delete_site_option('forerunner_ai_live_chat_license_key');
delete_option('forerunner_ai_license_cached_status');
delete_site_option('forerunner_ai_license_cached_status');
delete_option('forerunner_ai_license_last_check');
delete_site_option('forerunner_ai_license_last_check');
delete_option('forerunner_ai_live_chat_agents');
delete_site_option('forerunner_ai_live_chat_agents');

// Delete Transients
delete_transient('forerunner_ai_live_chat_visitors');
delete_site_transient('forerunner_ai_live_chat_visitors');
delete_transient('forerunner_ai_pending_requests');
delete_site_transient('forerunner_ai_pending_requests');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'forerunner_ai_pro_promotion_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'forerunner_ai_pro_promotion_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'forerunner_ai_pro_promotion_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'forerunner_ai_pro_promotion_dismissed' ) );

