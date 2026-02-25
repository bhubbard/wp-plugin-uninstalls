<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agentivo_chatbots_bubble_chat_id');
delete_site_option('agentivo_chatbots_bubble_chat_id');
delete_option('agentivo_chatbots_inline_chat_id');
delete_site_option('agentivo_chatbots_inline_chat_id');
delete_option('agentivo_chatbots_inline_width');
delete_site_option('agentivo_chatbots_inline_width');
delete_option('agentivo_chatbots_inline_height');
delete_site_option('agentivo_chatbots_inline_height');

