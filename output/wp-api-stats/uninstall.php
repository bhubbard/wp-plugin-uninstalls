<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sg_api_stats_db_version');
delete_site_option('sg_api_stats_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('sg_api_stats_cron');

