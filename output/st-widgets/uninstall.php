<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_chat_to_text');
delete_site_option('enable_chat_to_text');
delete_option('chat_to_text_token');
delete_site_option('chat_to_text_token');
delete_option('enable_web_scheduler');
delete_site_option('enable_web_scheduler');
delete_option('web_scheduler_token');
delete_site_option('web_scheduler_token');

