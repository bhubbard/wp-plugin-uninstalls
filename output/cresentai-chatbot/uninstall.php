<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cresentai_api_key');
delete_site_option('cresentai_api_key');
delete_option('cresentai_default_mode');
delete_site_option('cresentai_default_mode');
delete_option('cresentai_widget_title');
delete_site_option('cresentai_widget_title');
delete_option('cresentai_title_text_color');
delete_site_option('cresentai_title_text_color');
delete_option('cresentai_title_background_color');
delete_site_option('cresentai_title_background_color');
delete_option('cresentai_initial_prompt');
delete_site_option('cresentai_initial_prompt');
delete_option('cresentai_chat_background_color');
delete_site_option('cresentai_chat_background_color');
delete_option('cresentai_chat_message_background_color');
delete_site_option('cresentai_chat_message_background_color');
delete_option('cresentai_chat_message_text_color');
delete_site_option('cresentai_chat_message_text_color');
delete_option('cresentai_enforce_mandatory_userdetails_collection');
delete_site_option('cresentai_enforce_mandatory_userdetails_collection');
delete_option('cresentai_userdetails_text_color');
delete_site_option('cresentai_userdetails_text_color');
delete_option('cresentai_userdetails_label_color');
delete_site_option('cresentai_userdetails_label_color');

