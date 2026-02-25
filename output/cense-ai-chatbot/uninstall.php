<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cense_ai_chatbot_key');
delete_site_option('cense_ai_chatbot_key');

