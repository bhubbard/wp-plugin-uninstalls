<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rx_weatherbot_settings');
delete_site_option('rx_weatherbot_settings');
delete_option('rx_weatherbot_options');
delete_site_option('rx_weatherbot_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('rx_weatherbot_refresh_weather');

