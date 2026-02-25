<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sm_sql_logs_options');
delete_site_option('sm_sql_logs_options');
delete_option('sm_sql_logs_settings');
delete_site_option('sm_sql_logs_settings');
delete_option('sql_logs_db_version');
delete_site_option('sql_logs_db_version');
delete_option('SM_SQL_LOGS_VERSION');
delete_site_option('SM_SQL_LOGS_VERSION');

