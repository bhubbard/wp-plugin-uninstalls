<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicsapp_enabled');
delete_site_option('aicsapp_enabled');
delete_option('aicsapp_chatbot_id');
delete_site_option('aicsapp_chatbot_id');

