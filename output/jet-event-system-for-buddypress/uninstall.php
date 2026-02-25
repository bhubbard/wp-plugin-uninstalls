<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jes_events');
delete_site_option('jes_events');
delete_option('jes-events');
delete_site_option('jes-events');
delete_option('jes-theme-version');
delete_site_option('jes-theme-version');
delete_option('jes-events-db-version');
delete_site_option('jes-events-db-version');
delete_option('site_name');
delete_site_option('site_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('jes_events_notification_cron_hook');

