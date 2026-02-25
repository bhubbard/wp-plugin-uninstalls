<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fttg_bot_token');
delete_site_option('fttg_bot_token');
delete_option('fttg_chat_id');
delete_site_option('fttg_chat_id');
delete_option('fttg_enabled');
delete_site_option('fttg_enabled');
delete_option('fttg_active');
delete_site_option('fttg_active');

