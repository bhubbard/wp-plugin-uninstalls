<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('language');
delete_site_option('language');
delete_option('latitude');
delete_site_option('latitude');
delete_option('longitude');
delete_site_option('longitude');
delete_option('map_width');
delete_site_option('map_width');
delete_option('map_height');
delete_site_option('map_height');
delete_option('zoom');
delete_site_option('zoom');
delete_option('curr_format');
delete_site_option('curr_format');
delete_option('day_more_five_fare');
delete_site_option('day_more_five_fare');
delete_option('day_less_five_fare');
delete_site_option('day_less_five_fare');
delete_option('more_five_fare');
delete_site_option('more_five_fare');
delete_option('less_five_fare');
delete_site_option('less_five_fare');

