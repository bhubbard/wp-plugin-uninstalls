<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ash_options');
delete_site_option('ash_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('ash_scheduled_tasks');

