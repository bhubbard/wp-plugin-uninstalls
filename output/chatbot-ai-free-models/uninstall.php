<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newcodebyte_chatbot_title');
delete_site_option('newcodebyte_chatbot_title');
delete_option('newcodebyte_chatbot_welcome_message');
delete_site_option('newcodebyte_chatbot_welcome_message');
delete_option('newcodebyte_chatbot_api_key');
delete_site_option('newcodebyte_chatbot_api_key');
delete_option('newcodebyte_chatbot_model');
delete_site_option('newcodebyte_chatbot_model');
delete_option('newcodebyte_chatbot_responses_info');
delete_site_option('newcodebyte_chatbot_responses_info');
delete_option('newcodebyte_chatbot_behavior_type');
delete_site_option('newcodebyte_chatbot_behavior_type');
delete_option('newcodebyte_chatbot_enable_prechat_form');
delete_site_option('newcodebyte_chatbot_enable_prechat_form');
delete_option('newcodebyte_chatbot_prechat_title');
delete_site_option('newcodebyte_chatbot_prechat_title');
delete_option('newcodebyte_chatbot_prechat_description');
delete_site_option('newcodebyte_chatbot_prechat_description');
delete_option('newcodebyte_chatbot_enable_proactive_message');
delete_site_option('newcodebyte_chatbot_enable_proactive_message');
delete_option('newcodebyte_chatbot_proactive_message_text');
delete_site_option('newcodebyte_chatbot_proactive_message_text');
delete_option('newcodebyte_chatbot_proactive_message_delay');
delete_site_option('newcodebyte_chatbot_proactive_message_delay');
delete_option('newcodebyte_chatbot_display_mode');
delete_site_option('newcodebyte_chatbot_display_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newcodebyte_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newcodebyte_chatbot_window_height');
delete_site_option('newcodebyte_chatbot_window_height');
delete_option('newcodebyte_chatbot_position');
delete_site_option('newcodebyte_chatbot_position');
delete_option('newcodebyte_chatbot_notification_sound_url');
delete_site_option('newcodebyte_chatbot_notification_sound_url');
delete_option('newcodebyte_chatbot_save_messages');
delete_site_option('newcodebyte_chatbot_save_messages');
delete_option('newcodebyte_chatbot_show_powered_by');
delete_site_option('newcodebyte_chatbot_show_powered_by');
delete_option('newcodebyte_chatbot_header_bg_color');
delete_site_option('newcodebyte_chatbot_header_bg_color');
delete_option('newcodebyte_chatbot_header_text_color');
delete_site_option('newcodebyte_chatbot_header_text_color');
delete_option('newcodebyte_chatbot_chatbox_bg_color');
delete_site_option('newcodebyte_chatbot_chatbox_bg_color');
delete_option('newcodebyte_chatbot_user_message_bg_color');
delete_site_option('newcodebyte_chatbot_user_message_bg_color');
delete_option('newcodebyte_chatbot_user_message_text_color');
delete_site_option('newcodebyte_chatbot_user_message_text_color');
delete_option('newcodebyte_chatbot_bot_message_bg_color');
delete_site_option('newcodebyte_chatbot_bot_message_bg_color');
delete_option('newcodebyte_chatbot_bot_message_text_color');
delete_site_option('newcodebyte_chatbot_bot_message_text_color');
delete_option('newcodebyte_chatbot_send_button_bg_color');
delete_site_option('newcodebyte_chatbot_send_button_bg_color');
delete_option('newcodebyte_chatbot_send_button_text_color');
delete_site_option('newcodebyte_chatbot_send_button_text_color');
delete_option('newcodebyte_chatbot_user_avatar_url');
delete_site_option('newcodebyte_chatbot_user_avatar_url');
delete_option('newcodebyte_chatbot_bot_avatar_url');
delete_site_option('newcodebyte_chatbot_bot_avatar_url');
delete_option('newcodebyte_chatbot_icon_open_url');
delete_site_option('newcodebyte_chatbot_icon_open_url');
delete_option('newcodebyte_chatbot_icon_closed_url');
delete_site_option('newcodebyte_chatbot_icon_closed_url');
delete_option('newcodebyte_chatbot_prechat_name_label');
delete_site_option('newcodebyte_chatbot_prechat_name_label');
delete_option('newcodebyte_chatbot_prechat_email_label');
delete_site_option('newcodebyte_chatbot_prechat_email_label');
delete_option('newcodebyte_chatbot_prechat_button_text');
delete_site_option('newcodebyte_chatbot_prechat_button_text');
delete_option('newcodebyte_chatbot_prechat_error_message');
delete_site_option('newcodebyte_chatbot_prechat_error_message');
delete_option('newcodebyte_chatbot_db_version');
delete_site_option('newcodebyte_chatbot_db_version');

// Delete Transients
delete_transient('newcodebyte_chatbot_unread_count');
delete_site_transient('newcodebyte_chatbot_unread_count');
delete_transient('newcodebyte_openrouter_models');
delete_site_transient('newcodebyte_openrouter_models');

