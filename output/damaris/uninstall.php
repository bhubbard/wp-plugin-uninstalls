<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('url');
delete_site_option('url');
delete_option('login');
delete_site_option('login');
delete_option('password');
delete_site_option('password');
delete_option('my_plugin_db_version');
delete_site_option('my_plugin_db_version');
delete_option('hidden');
delete_site_option('hidden');

