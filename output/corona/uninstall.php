<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('corona_all');
delete_site_option('corona_all');
delete_option('corona_countries');
delete_site_option('corona_countries');
delete_option('corona_history');
delete_site_option('corona_history');
delete_option('corona_last_updated');
delete_site_option('corona_last_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('corona_jobs');

