<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itps_status');
delete_site_option('itps_status');
delete_option('itps_db_version');
delete_site_option('itps_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('itps_fetchPageSpeedData');

