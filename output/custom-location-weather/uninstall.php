<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custweather_api_key');
delete_site_option('custweather_api_key');
delete_option('custweather_city');
delete_site_option('custweather_city');
delete_option('custweather_country_code');
delete_site_option('custweather_country_code');
delete_option('custweather_default_unit');
delete_site_option('custweather_default_unit');
delete_option('clw_api_key');
delete_site_option('clw_api_key');

