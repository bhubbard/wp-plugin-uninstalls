<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_pixie_passed_event');
wp_clear_scheduled_hook('cron_pixie_future_event');
wp_clear_scheduled_hook('cron_pixie_single_event');

