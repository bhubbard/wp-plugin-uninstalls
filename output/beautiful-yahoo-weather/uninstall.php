<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('byw_lang');
delete_site_option('byw_lang');
delete_option('byw_name_city');
delete_site_option('byw_name_city');
delete_option('byw_woeid');
delete_site_option('byw_woeid');
delete_option('byw_image_set');
delete_site_option('byw_image_set');
delete_option('byw_unit');
delete_site_option('byw_unit');
delete_option('byw_bgcolor');
delete_site_option('byw_bgcolor');
delete_option('byw_css');
delete_site_option('byw_css');
delete_option('byw_mylang');
delete_site_option('byw_mylang');
delete_option('byw_smylang');
delete_site_option('byw_smylang');
delete_option('byw_fontsize');
delete_site_option('byw_fontsize');
delete_option('byw_rtlorltr');
delete_site_option('byw_rtlorltr');
delete_option('plugin_error');
delete_site_option('plugin_error');

// Delete Transients
delete_transient('weather_feed');
delete_site_transient('weather_feed');

