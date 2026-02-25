<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debug_cron');
delete_site_option('debug_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('debug_cron_jobs');

