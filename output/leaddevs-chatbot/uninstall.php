<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfbmb_feed_fb_messenger_chat_bot_application_credentials');
delete_site_option('wpfbmb_feed_fb_messenger_chat_bot_application_credentials');
delete_option('wpfbmb_feed_fb_messenger_chat_bot_application_option_setting');
delete_site_option('wpfbmb_feed_fb_messenger_chat_bot_application_option_setting');
delete_option('wpfbmb_fb_messenger_pages_settings');
delete_site_option('wpfbmb_fb_messenger_pages_settings');

