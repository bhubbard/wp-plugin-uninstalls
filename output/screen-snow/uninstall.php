<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snow_density');
delete_site_option('snow_density');
delete_option('snow_color');
delete_site_option('snow_color');
delete_option('snow_speed');
delete_site_option('snow_speed');
delete_option('snow_size');
delete_site_option('snow_size');

