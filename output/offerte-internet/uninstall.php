<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('offerte_internet_data');
delete_site_option('offerte_internet_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('offerte_internet_cron_hook');

