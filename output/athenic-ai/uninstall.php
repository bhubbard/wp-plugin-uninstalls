<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('athenic_db_version');
delete_site_option('athenic_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('athenic_data_push_schedule');

