<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_plugin_tracking_record');
delete_site_option('my_plugin_tracking_record');
delete_option('quickai_chatgpt_api_key');
delete_site_option('quickai_chatgpt_api_key');
delete_option('quickai_chatgpt_ai_name');
delete_site_option('quickai_chatgpt_ai_name');
delete_option('quickai_chatgpt_ai_role');
delete_site_option('quickai_chatgpt_ai_role');
delete_option('quickai_chatgpt_user_name');
delete_site_option('quickai_chatgpt_user_name');
delete_option('quickai_chatgpt_placeholder');
delete_site_option('quickai_chatgpt_placeholder');
delete_option('quickai_chatgpt_send_text');
delete_site_option('quickai_chatgpt_send_text');

