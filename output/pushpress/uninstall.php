<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushpress_subscribers');
delete_site_option('pushpress_subscribers');

// Clear Cron Jobs
wp_clear_scheduled_hook('pushpress_scheduled_ping');

