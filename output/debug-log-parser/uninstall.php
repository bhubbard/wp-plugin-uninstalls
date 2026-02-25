<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maxDashboardLogsLength');
delete_site_option('maxDashboardLogsLength');
delete_option('debugLogFilePath');
delete_site_option('debugLogFilePath');
delete_option('memoryLimit');
delete_site_option('memoryLimit');
delete_option('debug');
delete_site_option('debug');
delete_option('errorLevelColours');
delete_site_option('errorLevelColours');

