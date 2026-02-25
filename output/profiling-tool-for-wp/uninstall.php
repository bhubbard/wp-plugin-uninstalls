<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptfwp_backup_active_plugins');
delete_site_option('ptfwp_backup_active_plugins');
delete_option('PROFILING_TOOL_FOR_WP_LANGUAGE');
delete_site_option('PROFILING_TOOL_FOR_WP_LANGUAGE');
delete_option('ptfwp_db_version');
delete_site_option('ptfwp_db_version');
delete_option('TBIWP_FREE_KEY');
delete_site_option('TBIWP_FREE_KEY');

