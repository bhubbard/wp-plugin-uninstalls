<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agent700_agent_id');
delete_site_option('agent700_agent_id');
delete_option('agent700_hide_overlay');
delete_site_option('agent700_hide_overlay');
delete_option('agent700_layout_type');
delete_site_option('agent700_layout_type');
delete_option('agent700_primary_color');
delete_site_option('agent700_primary_color');
delete_option('agent700_message_title_color');
delete_site_option('agent700_message_title_color');
delete_option('agent700_bot_name');
delete_site_option('agent700_bot_name');
delete_option('agent700_use_shortcode');
delete_site_option('agent700_use_shortcode');
delete_option('agent700_chat_icon');
delete_site_option('agent700_chat_icon');
delete_option('agent700_chat_title');
delete_site_option('agent700_chat_title');
delete_option('agent700_chat_avatar');
delete_site_option('agent700_chat_avatar');
delete_option('agent700_chat_shortcode');
delete_site_option('agent700_chat_shortcode');

