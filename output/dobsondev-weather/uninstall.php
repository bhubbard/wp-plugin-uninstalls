<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dobsondev_weather_api_key');
delete_site_option('dobsondev_weather_api_key');

