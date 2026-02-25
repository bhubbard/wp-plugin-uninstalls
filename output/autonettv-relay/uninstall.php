<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autonettv_relay_api_settings_fields');
delete_site_option('autonettv_relay_api_settings_fields');
delete_option('autonettv_relay_api_settings_categories_fields');
delete_site_option('autonettv_relay_api_settings_categories_fields');
delete_option('autonettv_relay_api_categories');
delete_site_option('autonettv_relay_api_categories');
delete_option('autonettv_relay_api_settings_schedule_fields');
delete_site_option('autonettv_relay_api_settings_schedule_fields');
delete_option('autonettv-relay-api-categories');
delete_site_option('autonettv-relay-api-categories');

// Clear Cron Jobs
wp_clear_scheduled_hook('autonettv_relay_api_events_hook');

