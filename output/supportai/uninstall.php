<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('supportai_apikey');
delete_site_option('supportai_apikey');
delete_option('supportai_active_chatbot_id');
delete_site_option('supportai_active_chatbot_id');

