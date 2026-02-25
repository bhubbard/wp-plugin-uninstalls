<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_chat_button_settings');
delete_site_option('smart_chat_button_settings');
delete_option('smart_chat_button_click_data');
delete_site_option('smart_chat_button_click_data');

