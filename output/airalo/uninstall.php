<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('airalo_settings');
delete_site_option('airalo_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('airalo_hourly_cron_hook');
wp_clear_scheduled_hook('airalo_daily_cron_hook');

