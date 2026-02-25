<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbmanager_options');
delete_site_option('dbmanager_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('dbmanager_cron_backup');
wp_clear_scheduled_hook('dbmanager_cron_optimize');
wp_clear_scheduled_hook('dbmanager_cron_repair');

