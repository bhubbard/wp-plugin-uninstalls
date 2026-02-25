<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('friendzsoft_chatbot_header_color');
delete_site_option('friendzsoft_chatbot_header_color');
delete_option('friendzsoft_openai_api_url');
delete_site_option('friendzsoft_openai_api_url');
delete_option('friendzsoft_openai_api_key');
delete_site_option('friendzsoft_openai_api_key');
delete_option('friendzsoft_chatbot_logo');
delete_site_option('friendzsoft_chatbot_logo');
delete_option('friendzsoft_chatbot_primary_color');
delete_site_option('friendzsoft_chatbot_primary_color');
delete_option('friendzsoft_chatbot_title');
delete_site_option('friendzsoft_chatbot_title');
delete_option('friendzsoft_openai_instruction');
delete_site_option('friendzsoft_openai_instruction');

