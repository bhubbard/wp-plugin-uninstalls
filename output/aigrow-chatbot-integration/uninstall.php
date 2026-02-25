<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aigrow_chatbot_token');
delete_site_option('aigrow_chatbot_token');
delete_option('aigrow_chatbot_title');
delete_site_option('aigrow_chatbot_title');
delete_option('aigrow_chatbot_ws_url');
delete_site_option('aigrow_chatbot_ws_url');

