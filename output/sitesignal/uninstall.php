<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dreamcore_monitor_api_key');
delete_site_option('dreamcore_monitor_api_key');
delete_option('dreamcore_monitor_site_id');
delete_site_option('dreamcore_monitor_site_id');
delete_option('dreamcore_monitor_enable_logging');
delete_site_option('dreamcore_monitor_enable_logging');
delete_option('dreamcore_monitor_log_retention');
delete_site_option('dreamcore_monitor_log_retention');
delete_option('dreamcore_monitor_enable_api');
delete_site_option('dreamcore_monitor_enable_api');
delete_option('dreamcore_monitor_enable_geolocation');
delete_site_option('dreamcore_monitor_enable_geolocation');
delete_option('dreamcore_monitor_enable_useragent_tracking');
delete_site_option('dreamcore_monitor_enable_useragent_tracking');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('dreamcore_monitor_verify_api_key_daily');

