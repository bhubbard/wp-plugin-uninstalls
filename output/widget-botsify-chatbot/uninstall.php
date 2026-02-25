<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('botsify_chatbot_api_key');
delete_site_option('botsify_chatbot_api_key');
delete_option('botsify_chatbot_url');
delete_site_option('botsify_chatbot_url');

