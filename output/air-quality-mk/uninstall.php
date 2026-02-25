<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('air-quality-mk_options');
delete_site_option('air-quality-mk_options');
delete_option('air_quality_mk_db_version');
delete_site_option('air_quality_mk_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('air_quality_mk_new_measurement_event');

