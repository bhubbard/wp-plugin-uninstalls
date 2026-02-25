<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frontapp_auth');
delete_site_option('frontapp_auth');
delete_option('frontapp_inbox');
delete_site_option('frontapp_inbox');
delete_option('frontapp_freshchat');
delete_site_option('frontapp_freshchat');
delete_option('frontapp_chat_id');
delete_site_option('frontapp_chat_id');

