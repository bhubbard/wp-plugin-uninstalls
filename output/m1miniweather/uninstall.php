<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('m1_miniweather_renew_last');
delete_site_option('m1_miniweather_renew_last');
delete_option('m1_miniweather_openweathermap');
delete_site_option('m1_miniweather_openweathermap');

