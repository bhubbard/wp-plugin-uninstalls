<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultrablocks_google_maps_api_key');
delete_site_option('ultrablocks_google_maps_api_key');
delete_option('ultrablocks_mailchimp_api_key');
delete_site_option('ultrablocks_mailchimp_api_key');
delete_option('ultrablocks_mailchimp_audience_id');
delete_site_option('ultrablocks_mailchimp_audience_id');
delete_option('ultrablocks_open_weather_map_api_key');
delete_site_option('ultrablocks_open_weather_map_api_key');

