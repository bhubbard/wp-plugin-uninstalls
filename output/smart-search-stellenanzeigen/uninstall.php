<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stellenanzeigen_jobs_city');
delete_site_option('stellenanzeigen_jobs_city');
delete_option('stellenanzeigen_jobs_regions');
delete_site_option('stellenanzeigen_jobs_regions');
delete_option('stellenanzeigen_jobs_regions_coordinates');
delete_site_option('stellenanzeigen_jobs_regions_coordinates');

// Clear Cron Jobs
wp_clear_scheduled_hook('getJobLocationDataEvery__1day');

