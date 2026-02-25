<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sentwatch_connected');
delete_site_option('sentwatch_connected');
delete_option('sentwatch_api_key');
delete_site_option('sentwatch_api_key');
delete_option('sentwatch_site_uuid');
delete_site_option('sentwatch_site_uuid');
delete_option('sentwatch_last_heartbeat');
delete_site_option('sentwatch_last_heartbeat');
delete_option('sentwatch_interval');
delete_site_option('sentwatch_interval');
delete_option('sentwatch_heartbeat_email');
delete_site_option('sentwatch_heartbeat_email');

// Clear Cron Jobs
wp_clear_scheduled_hook('sentwatch_send_heartbeat');
wp_clear_scheduled_hook('sentwatch_check_config');

