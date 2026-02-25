<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpda_region');
delete_site_option('wpda_region');
delete_option('wpda_legal');
delete_site_option('wpda_legal');
delete_option('wpda_window');
delete_site_option('wpda_window');
delete_option('wpda_updated');
delete_site_option('wpda_updated');
delete_option('wpda_data');
delete_site_option('wpda_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpda_cron_hook');

