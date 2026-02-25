<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ds_chatbot_delete_on_uninstall');
delete_site_option('ds_chatbot_delete_on_uninstall');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ds_chatbot_api_key');
delete_site_option('ds_chatbot_api_key');
delete_option('ds_chatbot_endpoint');
delete_site_option('ds_chatbot_endpoint');
delete_option('ds_chatbot_system_role');
delete_site_option('ds_chatbot_system_role');
delete_option('ds_chatbot_model');
delete_site_option('ds_chatbot_model');
delete_option('ds_chatbot_title');
delete_site_option('ds_chatbot_title');
delete_option('ds_chatbot_user_color');
delete_site_option('ds_chatbot_user_color');
delete_option('ds_chatbot_bot_color');
delete_site_option('ds_chatbot_bot_color');
delete_option('ds_chatbot_user_text_color');
delete_site_option('ds_chatbot_user_text_color');
delete_option('ds_chatbot_bot_text_color');
delete_site_option('ds_chatbot_bot_text_color');
delete_option('ds_chatbot_input_placeholder');
delete_site_option('ds_chatbot_input_placeholder');
delete_option('ds_chatbot_opening_prompt');
delete_site_option('ds_chatbot_opening_prompt');
delete_option('ds_chatbot_style_version');
delete_site_option('ds_chatbot_style_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('ds_chatbot_cron_hook');

