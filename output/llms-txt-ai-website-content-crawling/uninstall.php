<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llmsaiwcc_settings');
delete_site_option('llmsaiwcc_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('llmsaiwcc_daily_event');
wp_clear_scheduled_hook('llmsaiwcc_weekly_event');

