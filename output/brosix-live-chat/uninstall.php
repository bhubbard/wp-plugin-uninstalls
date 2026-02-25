<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brosix-chat-api-key');
delete_site_option('brosix-chat-api-key');
delete_option('brosix-chat-id');
delete_site_option('brosix-chat-id');
delete_option('brosix-chat-status');
delete_site_option('brosix-chat-status');
delete_option('brosix-home-status');
delete_site_option('brosix-home-status');
delete_option('brosix-chat-network');
delete_site_option('brosix-chat-network');

