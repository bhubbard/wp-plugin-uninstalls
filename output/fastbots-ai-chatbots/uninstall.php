<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fastbots_chatbot_embed_code');
delete_site_option('fastbots_chatbot_embed_code');
delete_option('fastbots_chatbot_embed_code_two');
delete_site_option('fastbots_chatbot_embed_code_two');

