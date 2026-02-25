<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_plugin_db_version');
delete_site_option('my_plugin_db_version');
delete_option('delighted_api_key');
delete_site_option('delighted_api_key');
delete_option('survey_time_period');
delete_site_option('survey_time_period');
delete_option('survey_first_time_customer');
delete_site_option('survey_first_time_customer');
delete_option('survey_backfill_customer');
delete_site_option('survey_backfill_customer');

