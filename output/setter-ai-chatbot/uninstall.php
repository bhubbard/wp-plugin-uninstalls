<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setterai_chatbot_id');
delete_site_option('setterai_chatbot_id');
delete_option('setterai_chatbot_status');
delete_site_option('setterai_chatbot_status');

