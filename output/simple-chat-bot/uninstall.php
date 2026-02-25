<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_chatbot_whatsapp_number');
delete_site_option('simple_chatbot_whatsapp_number');

