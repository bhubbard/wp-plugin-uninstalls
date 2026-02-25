<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_assistant_api_key');
delete_site_option('ai_assistant_api_key');
delete_option('ai_assistant_model');
delete_site_option('ai_assistant_model');
delete_option('ai_assistant_system');
delete_site_option('ai_assistant_system');
delete_option('ai_assistant_welcome_message');
delete_site_option('ai_assistant_welcome_message');
delete_option('ai_assistant_header_bg');
delete_site_option('ai_assistant_header_bg');
delete_option('ai_assistant_icon_bg');
delete_site_option('ai_assistant_icon_bg');

