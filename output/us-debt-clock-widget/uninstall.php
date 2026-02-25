<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('us_debtclock_widget_info');
delete_site_transient('us_debtclock_widget_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('us_debtclock_widget_event_hook');

