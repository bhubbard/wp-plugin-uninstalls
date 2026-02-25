<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ltgntf_bot_token');
delete_site_option('ltgntf_bot_token');
delete_option('ltgntf_chat_id');
delete_site_option('ltgntf_chat_id');
delete_option('ltgntf_enabled');
delete_site_option('ltgntf_enabled');

