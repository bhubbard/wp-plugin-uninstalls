<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('manuel_cron_interval');
delete_site_option('manuel_cron_interval');

// Clear Cron Jobs
wp_clear_scheduled_hook('manuel_cron_event');

