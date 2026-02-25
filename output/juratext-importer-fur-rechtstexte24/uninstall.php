<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('jura_tifr_cron_event');
wp_clear_scheduled_hook('rechtstexte_hourly_event');

