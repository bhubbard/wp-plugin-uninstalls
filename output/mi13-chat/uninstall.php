<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mi13_chat');
delete_site_option('mi13_chat');
delete_option('mi13_chat_content');
delete_site_option('mi13_chat_content');
delete_option('mi13_chat_online');
delete_site_option('mi13_chat_online');

