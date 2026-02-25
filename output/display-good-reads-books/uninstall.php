<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goodrds_reading_json');
delete_site_option('goodrds_reading_json');
delete_option('goodrds_read_json');
delete_site_option('goodrds_read_json');
delete_option('goodrds_options');
delete_site_option('goodrds_options');

// Delete Transients
delete_transient('goodrds_getLimit');
delete_site_transient('goodrds_getLimit');

// Clear Cron Jobs
wp_clear_scheduled_hook('goodrds_cronjob');

