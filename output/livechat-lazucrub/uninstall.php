<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('real_time_chat_public_key');
delete_site_option('real_time_chat_public_key');
delete_option('real_time_chat_private_key');
delete_site_option('real_time_chat_private_key');
delete_option('real_time_chat_access');
delete_site_option('real_time_chat_access');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

