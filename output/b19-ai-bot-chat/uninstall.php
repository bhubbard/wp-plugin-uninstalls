<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b19cojp_ai_bot_chat_options');
delete_site_option('b19cojp_ai_bot_chat_options');
delete_option('ai_bot_chat_options');
delete_site_option('ai_bot_chat_options');

