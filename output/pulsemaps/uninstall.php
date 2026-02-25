<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pulsemaps_options');
delete_site_option('pulsemaps_options');
delete_option('pulsemaps_widget');
delete_site_option('pulsemaps_widget');

// Clear Cron Jobs
wp_clear_scheduled_hook('pulsemaps_daily');

