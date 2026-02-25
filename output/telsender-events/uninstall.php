<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ts_event_login_failed');
delete_site_option('ts_event_login_failed');
delete_option('ts_event_token');
delete_site_option('ts_event_token');
delete_option('ts_event_login_failed_chat_id');
delete_site_option('ts_event_login_failed_chat_id');
delete_option('ts_event_login_success');
delete_site_option('ts_event_login_success');
delete_option('ts_event_login_success_chat_id');
delete_site_option('ts_event_login_success_chat_id');
delete_option('ts_event_interception_post_chat_id');
delete_site_option('ts_event_interception_post_chat_id');
delete_option('ts_event_interception_post_value');
delete_site_option('ts_event_interception_post_value');
delete_option('ts_event_interception_post_param');
delete_site_option('ts_event_interception_post_param');
delete_option('ts_event_utm');
delete_site_option('ts_event_utm');
delete_option('ts_event_utm_chat_id');
delete_site_option('ts_event_utm_chat_id');
delete_option('ts_event_utm_list_param');
delete_site_option('ts_event_utm_list_param');
delete_option('ts_event_utm_list_value');
delete_site_option('ts_event_utm_list_value');
delete_option('ts_event_interception_post');
delete_site_option('ts_event_interception_post');
delete_option('ts_event_interception_list_value');
delete_site_option('ts_event_interception_list_value');
delete_option('ts_event_interception_list_title');
delete_site_option('ts_event_interception_list_title');
delete_option('ts_event_interception_list_param');
delete_site_option('ts_event_interception_list_param');
delete_option('ts_event_wc_add_to_cart');
delete_site_option('ts_event_wc_add_to_cart');
delete_option('ts_event_wc_add_to_cart_chat_id');
delete_site_option('ts_event_wc_add_to_cart_chat_id');
delete_option('ts_event_bots');
delete_site_option('ts_event_bots');
delete_option('otherbots');
delete_site_option('otherbots');
delete_option('ts_event_bot_list_value');
delete_site_option('ts_event_bot_list_value');

