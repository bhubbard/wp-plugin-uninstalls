<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gemini_chatbot_api_key');
delete_site_option('gemini_chatbot_api_key');
delete_option('gemini_chatbot_ai_provider');
delete_site_option('gemini_chatbot_ai_provider');
delete_option('gemini_chatbot_model_name');
delete_site_option('gemini_chatbot_model_name');
delete_option('gemini_chatbot_enabled');
delete_site_option('gemini_chatbot_enabled');
delete_option('gemini_chatbot_custom_context');
delete_site_option('gemini_chatbot_custom_context');
delete_option('gemini_chatbot_custom_restrictions');
delete_site_option('gemini_chatbot_custom_restrictions');
delete_option('gemini_chatbot_bot_name');
delete_site_option('gemini_chatbot_bot_name');
delete_option('gemini_chatbot_welcome_message');
delete_site_option('gemini_chatbot_welcome_message');
delete_option('gemini_chatbot_suggestion_prompts');
delete_site_option('gemini_chatbot_suggestion_prompts');
delete_option('gemini_chatbot_color_mode');
delete_site_option('gemini_chatbot_color_mode');
delete_option('gemini_chatbot_color_preset');
delete_site_option('gemini_chatbot_color_preset');
delete_option('gemini_chatbot_color_primary');
delete_site_option('gemini_chatbot_color_primary');
delete_option('gemini_chatbot_color_secondary');
delete_site_option('gemini_chatbot_color_secondary');
delete_option('gemini_chatbot_position');
delete_site_option('gemini_chatbot_position');
delete_option('gemini_chatbot_draggable');
delete_site_option('gemini_chatbot_draggable');
delete_option('gemini_chatbot_resizable');
delete_site_option('gemini_chatbot_resizable');
delete_option('gemini_chatbot_data_site_info');
delete_site_option('gemini_chatbot_data_site_info');
delete_option('gemini_chatbot_data_posts');
delete_site_option('gemini_chatbot_data_posts');
delete_option('gemini_chatbot_data_pages');
delete_site_option('gemini_chatbot_data_pages');
delete_option('gemini_chatbot_data_categories');
delete_site_option('gemini_chatbot_data_categories');
delete_option('gemini_chatbot_data_tags');
delete_site_option('gemini_chatbot_data_tags');
delete_option('gemini_chatbot_data_comments');
delete_site_option('gemini_chatbot_data_comments');
delete_option('gemini_chatbot_data_menus');
delete_site_option('gemini_chatbot_data_menus');
delete_option('gemini_chatbot_data_products');
delete_site_option('gemini_chatbot_data_products');
delete_option('gemini_chatbot_data_social_links');
delete_site_option('gemini_chatbot_data_social_links');
delete_option('gemini_chatbot_selected_pages');
delete_site_option('gemini_chatbot_selected_pages');
delete_option('gemini_chatbot_settings_updated');
delete_site_option('gemini_chatbot_settings_updated');
delete_option('gemini_chatbot_admin_secret');
delete_site_option('gemini_chatbot_admin_secret');
delete_option('gemini_chatbot_is_blocked');
delete_site_option('gemini_chatbot_is_blocked');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'onepage_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('gemini_chatbot_blocked_status');
delete_site_transient('gemini_chatbot_blocked_status');

