<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('IRP_HookPriority');
delete_site_option('IRP_HookPriority');

// Clear Cron Jobs
wp_clear_scheduled_hook('irp_weekly_scheduled_events');
wp_clear_scheduled_hook('irp_daily_scheduled_events');

