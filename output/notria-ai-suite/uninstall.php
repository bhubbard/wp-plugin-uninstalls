<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notria_ai_suite_provider');
delete_site_option('notria_ai_suite_provider');
delete_option('notria_ai_suite_api_key');
delete_site_option('notria_ai_suite_api_key');
delete_option('notria_ai_suite_model');
delete_site_option('notria_ai_suite_model');
delete_option('notria_ai_suite_chatbot_welcome_message');
delete_site_option('notria_ai_suite_chatbot_welcome_message');
delete_option('notria_ai_suite_chatbot_color');
delete_site_option('notria_ai_suite_chatbot_color');
delete_option('notria_ai_suite_rag_enabled');
delete_site_option('notria_ai_suite_rag_enabled');
delete_option('notria_ai_suite_content_language');
delete_site_option('notria_ai_suite_content_language');
delete_option('notria_ai_suite_indexed_posts');
delete_site_option('notria_ai_suite_indexed_posts');
delete_option('notria_ai_suite_module_content_generator');
delete_site_option('notria_ai_suite_module_content_generator');
delete_option('notria_ai_suite_module_chatbot');
delete_site_option('notria_ai_suite_module_chatbot');
delete_option('notria_ai_suite_module_form_enhancer');
delete_site_option('notria_ai_suite_module_form_enhancer');
delete_option('notria_ai_suite_embeddings_model');
delete_site_option('notria_ai_suite_embeddings_model');

