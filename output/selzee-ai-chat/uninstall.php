<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selzee_chatbot_id');
delete_site_option('selzee_chatbot_id');
delete_option('selzee_enabled');
delete_site_option('selzee_enabled');

