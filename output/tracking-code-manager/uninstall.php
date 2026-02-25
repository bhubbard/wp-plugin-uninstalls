<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TCM_HookPriority');
delete_site_option('TCM_HookPriority');

// Clear Cron Jobs
wp_clear_scheduled_hook('tcmp_weekly_scheduled_events');
wp_clear_scheduled_hook('tcmp_daily_scheduled_events');

