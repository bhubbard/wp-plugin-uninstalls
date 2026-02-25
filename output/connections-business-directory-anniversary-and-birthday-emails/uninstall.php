<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('connections_aabe_queue');
delete_site_option('connections_aabe_queue');

// Clear Cron Jobs
wp_clear_scheduled_hook('cn-aabe-hourly-event');
wp_clear_scheduled_hook('cn-aabe-daily-event');

