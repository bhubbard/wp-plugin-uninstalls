<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('userlog_databaselastupdate');
delete_site_option('userlog_databaselastupdate');
delete_option('userlog_version');
delete_site_option('userlog_version');
delete_option('userlog_timezone');
delete_site_option('userlog_timezone');

