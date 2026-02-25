<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmcas_chatbot_openai_api_key');
delete_site_option('tmcas_chatbot_openai_api_key');
delete_option('tmcas_chatbot_assistant_id');
delete_site_option('tmcas_chatbot_assistant_id');
delete_option('tmcas_chatbot_thread_persistence');
delete_site_option('tmcas_chatbot_thread_persistence');
delete_option('tmcas_chatbot_threads');
delete_site_option('tmcas_chatbot_threads');
delete_option('tmcas_chatbot_display_ids');
delete_site_option('tmcas_chatbot_display_ids');
delete_option('tmcas_chatbot_assistant_name');
delete_site_option('tmcas_chatbot_assistant_name');
delete_option('tmcas_chatbot_background_color');
delete_site_option('tmcas_chatbot_background_color');
delete_option('tmcas_chatbot_text_color');
delete_site_option('tmcas_chatbot_text_color');
delete_option('tmcas_chatbot_title');
delete_site_option('tmcas_chatbot_title');
delete_option('tmcas_chatbot_placeholder');
delete_site_option('tmcas_chatbot_placeholder');
delete_option('tmcas_chatbot_default_question');
delete_site_option('tmcas_chatbot_default_question');
delete_option('tmcas_chatbot_avatar');
delete_site_option('tmcas_chatbot_avatar');

