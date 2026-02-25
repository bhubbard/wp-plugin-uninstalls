<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p5_db_version');
delete_site_option('p5_db_version');
delete_option('time_format ');
delete_site_option('time_format ');

// Clear Cron Jobs
wp_clear_scheduled_hook('p5cron');

