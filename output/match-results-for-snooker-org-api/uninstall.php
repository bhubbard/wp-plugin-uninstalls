<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrfs_snooker_org_api_key');
delete_site_option('mrfs_snooker_org_api_key');
delete_option('mrfs_snooker_org_show_powered_by');
delete_site_option('mrfs_snooker_org_show_powered_by');

// Clear Cron Jobs
wp_clear_scheduled_hook('snooker_org_cron_event_10_minutes');
wp_clear_scheduled_hook('snooker_weekly_cron_event');

