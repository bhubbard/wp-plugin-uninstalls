<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mister_chat_options');
delete_site_option('mister_chat_options');
delete_option('my_db_version');
delete_site_option('my_db_version');

