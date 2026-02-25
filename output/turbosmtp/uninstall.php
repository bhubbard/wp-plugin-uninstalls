<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ts_auth_options');
delete_site_option('ts_auth_options');
delete_option('ts_send_options');
delete_site_option('ts_send_options');
delete_option('ts_show_credentials');
delete_site_option('ts_show_credentials');
delete_option('ts_migration_done');
delete_site_option('ts_migration_done');

