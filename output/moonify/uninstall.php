<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_moon_api_key');
delete_site_option('_moon_api_key');
delete_option('_moon_default_position');
delete_site_option('_moon_default_position');
delete_option('_moon_default_effect');
delete_site_option('_moon_default_effect');
delete_option('_moon_default_bgcolor');
delete_site_option('_moon_default_bgcolor');
delete_option('_moon_default_primcolor');
delete_site_option('_moon_default_primcolor');
delete_option('_moon_default_reflect');
delete_site_option('_moon_default_reflect');
delete_option('_moon_default_indicator');
delete_site_option('_moon_default_indicator');
delete_option('_moon_default_edge');
delete_site_option('_moon_default_edge');
delete_option('_moon_default_speed');
delete_site_option('_moon_default_speed');

