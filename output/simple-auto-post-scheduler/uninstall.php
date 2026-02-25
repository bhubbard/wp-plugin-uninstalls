<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_scheduler_activated');
delete_site_option('post_scheduler_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('post_scheduler_cron_hook');

