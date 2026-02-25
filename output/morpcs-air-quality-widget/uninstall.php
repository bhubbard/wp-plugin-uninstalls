<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aqi_api_key');
delete_site_option('aqi_api_key');
delete_option('aqi_api_zip');
delete_site_option('aqi_api_zip');
delete_option('aqi_widget_show_forecast');
delete_site_option('aqi_widget_show_forecast');
delete_option('aqi_widget_show_legend');
delete_site_option('aqi_widget_show_legend');
delete_option('aqi_widget_theme');
delete_site_option('aqi_widget_theme');

