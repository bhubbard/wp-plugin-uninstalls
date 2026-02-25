<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iads_options');
delete_site_option('iads_options');
delete_option('iads_db_version');
delete_site_option('iads_db_version');
delete_option('iads_blacklisted_ips');
delete_site_option('iads_blacklisted_ips');

// Clear Cron Jobs
wp_clear_scheduled_hook('iads_daily_cleanup');

