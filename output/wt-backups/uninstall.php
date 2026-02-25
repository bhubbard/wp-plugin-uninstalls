<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wt_backups_init_cron');
wp_clear_scheduled_hook('wt_backups_init_cron_incremental');
wp_clear_scheduled_hook('wt_backups_five_min_event');
wp_clear_scheduled_hook('wt_backups_hourly_event');

