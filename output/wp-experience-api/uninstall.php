<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpxapi_settings');
delete_site_option('wpxapi_settings');
delete_option('json_api_base');
delete_site_option('json_api_base');
delete_option('wpxapi_network_settings');
delete_site_option('wpxapi_network_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpxapi_run_queue');

