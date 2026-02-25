<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qqpress_message');
delete_site_option('qqpress_message');
delete_option('qqpress_db_version');
delete_site_option('qqpress_db_version');
delete_option('qq_oauth_token');
delete_site_option('qq_oauth_token');
delete_option('qq_oauth_token_secret');
delete_site_option('qq_oauth_token_secret');

