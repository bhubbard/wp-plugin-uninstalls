<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abdfw_page_cleanup_schedule');
delete_site_option('abdfw_page_cleanup_schedule');

// Clear Cron Jobs
wp_clear_scheduled_hook('abdfw_run_scheduled_page_cleanup');

