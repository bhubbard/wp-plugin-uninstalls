<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyaich_ai_chatbot_client');
delete_site_option('easyaich_ai_chatbot_client');
delete_option('easyaich_ai_chatbot_bot');
delete_site_option('easyaich_ai_chatbot_bot');
delete_option('easyaich_ai_chatbot_token');
delete_site_option('easyaich_ai_chatbot_token');

