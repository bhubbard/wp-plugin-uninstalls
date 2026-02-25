<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('captura_chatbot_total_tokens');
delete_site_option('captura_chatbot_total_tokens');
delete_option('captura_chatbot_api_key');
delete_site_option('captura_chatbot_api_key');
delete_option('captura_chatbot_token_reset_date');
delete_site_option('captura_chatbot_token_reset_date');
delete_option('captura_chatbot_model');
delete_site_option('captura_chatbot_model');
delete_option('captura_chatbot_temperature');
delete_site_option('captura_chatbot_temperature');
delete_option('captura_chatbot_max_tokens');
delete_site_option('captura_chatbot_max_tokens');
delete_option('captura_chatbot_instructions');
delete_site_option('captura_chatbot_instructions');
delete_option('captura_chatbot_enabled');
delete_site_option('captura_chatbot_enabled');
delete_option('captura_chatbot_css_version');
delete_site_option('captura_chatbot_css_version');
delete_option('captura_chatbot_welcome_message');
delete_site_option('captura_chatbot_welcome_message');
delete_option('captura_chatbot_header_bg_color');
delete_site_option('captura_chatbot_header_bg_color');
delete_option('captura_chatbot_header_text_color');
delete_site_option('captura_chatbot_header_text_color');
delete_option('captura_chatbot_user_msg_bg_color');
delete_site_option('captura_chatbot_user_msg_bg_color');
delete_option('captura_chatbot_user_msg_text_color');
delete_site_option('captura_chatbot_user_msg_text_color');
delete_option('captura_chatbot_bot_msg_bg_color');
delete_site_option('captura_chatbot_bot_msg_bg_color');
delete_option('captura_chatbot_bot_msg_text_color');
delete_site_option('captura_chatbot_bot_msg_text_color');
delete_option('captura_chatbot_button_bg_color');
delete_site_option('captura_chatbot_button_bg_color');
delete_option('captura_chatbot_button_text_color');
delete_site_option('captura_chatbot_button_text_color');
delete_option('captura_chatbot_assistant_avatar');
delete_site_option('captura_chatbot_assistant_avatar');
delete_option('captura_chatbot_button_icon');
delete_site_option('captura_chatbot_button_icon');
delete_option('captura_use_knowledge_base');
delete_site_option('captura_use_knowledge_base');
delete_option('captura_chunk_size');
delete_site_option('captura_chunk_size');
delete_option('captura_show_on_homepage');
delete_site_option('captura_show_on_homepage');
delete_option('captura_show_on_posts');
delete_site_option('captura_show_on_posts');
delete_option('captura_show_on_pages');
delete_site_option('captura_show_on_pages');
delete_option('captura_show_on_archives');
delete_site_option('captura_show_on_archives');

// Delete Transients
delete_transient('captura_chatbot_css');
delete_site_transient('captura_chatbot_css');

// Clear Cron Jobs
wp_clear_scheduled_hook('captura_chatbot_cleanup');

