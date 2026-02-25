<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geotagmapper_country');
delete_site_option('geotagmapper_country');
delete_option('geotagmapper_state');
delete_site_option('geotagmapper_state');
delete_option('geotagmapper_city');
delete_site_option('geotagmapper_city');
delete_option('geotagmapper_street');
delete_site_option('geotagmapper_street');
delete_option('geotagmapper_zip');
delete_site_option('geotagmapper_zip');
delete_option('geotagmapper_lat');
delete_site_option('geotagmapper_lat');
delete_option('geotagmapper_lng');
delete_site_option('geotagmapper_lng');
delete_option('geotagmapper_country_code');
delete_site_option('geotagmapper_country_code');
delete_option('geotagmapper_subcountry_code');
delete_site_option('geotagmapper_subcountry_code');
delete_option('geotagmapper_place_on_front');
delete_site_option('geotagmapper_place_on_front');
delete_option('geotagmapper_place_on_single_post');
delete_site_option('geotagmapper_place_on_single_post');
delete_option('geotagmapper_place_on_single_page');
delete_site_option('geotagmapper_place_on_single_page');
delete_option('geotagmapper_place_on_category');
delete_site_option('geotagmapper_place_on_category');
delete_option('geotagmapper_place_on_tag');
delete_site_option('geotagmapper_place_on_tag');
delete_option('geotagmapper_place_on_search');
delete_site_option('geotagmapper_place_on_search');

