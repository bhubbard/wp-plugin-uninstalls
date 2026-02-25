<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('docuask_api_key');
delete_site_option('docuask_api_key');
delete_option('docuask_chatbot_key');
delete_site_option('docuask_chatbot_key');

