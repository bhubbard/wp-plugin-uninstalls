<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cctimer_settings');
delete_site_option('cctimer_settings');

// Delete Transients
delete_transient('cctimer_cache');
delete_site_transient('cctimer_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('cctimer_daily_cleanup');

