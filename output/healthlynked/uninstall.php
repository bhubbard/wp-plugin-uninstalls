<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twhl_db_version');
delete_site_option('twhl_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('healthlynked_cron');

