<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpu_my_daily_event');
wp_clear_scheduled_hook('my_daily_event');

