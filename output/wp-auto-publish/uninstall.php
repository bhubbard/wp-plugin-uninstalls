<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WIND_start_date');
delete_site_option('WIND_start_date');
delete_option('WIND_start_time');
delete_site_option('WIND_start_time');
delete_option('WIND_interval_time');
delete_site_option('WIND_interval_time');
delete_option('WIND_draft_num');
delete_site_option('WIND_draft_num');
delete_option('WIND_draf_orderby');
delete_site_option('WIND_draf_orderby');
delete_option('WIND_recurrence');
delete_site_option('WIND_recurrence');
delete_option('WIND_recurrence_times');
delete_site_option('WIND_recurrence_times');

// Clear Cron Jobs
wp_clear_scheduled_hook('WIND_cron_draft_update_hook');

