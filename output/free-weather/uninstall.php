<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weather_global_settings');
delete_site_option('weather_global_settings');
delete_option('weather_options');
delete_site_option('weather_options');

