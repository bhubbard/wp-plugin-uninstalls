<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('init_autobackup');
wp_clear_scheduled_hook('wp2pcl_run_pcloud_backup_hook');

