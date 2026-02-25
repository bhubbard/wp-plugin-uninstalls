<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snowflurry_snow_color');
delete_site_option('snowflurry_snow_color');
delete_option('snowflurry_always_show_snow');
delete_site_option('snowflurry_always_show_snow');
delete_option('snowflurry_weather_country_codes');
delete_site_option('snowflurry_weather_country_codes');
delete_option('snowflurry_weather_api_key');
delete_site_option('snowflurry_weather_api_key');

// Delete Transients
delete_transient('snowflurry_enqueue_snowstorm_script');
delete_site_transient('snowflurry_enqueue_snowstorm_script');

// Clear Cron Jobs
wp_clear_scheduled_hook('snowflurry_snow_check_weather_event');

