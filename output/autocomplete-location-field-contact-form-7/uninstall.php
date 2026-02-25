<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwaa_country_code');
delete_site_option('gwaa_country_code');
delete_option('gwaa_address_option');
delete_site_option('gwaa_address_option');
delete_option('gwaa_place_types');
delete_site_option('gwaa_place_types');
delete_option('gwaa_enable_map');
delete_site_option('gwaa_enable_map');
delete_option('gwaa_cf7_geo_api_key');
delete_site_option('gwaa_cf7_geo_api_key');
delete_option('gwaa_tr_enter_loc');
delete_site_option('gwaa_tr_enter_loc');
delete_option('gwaa_tr_apartment');
delete_site_option('gwaa_tr_apartment');
delete_option('gwaa_tr_city');
delete_site_option('gwaa_tr_city');
delete_option('gwaa_tr_state');
delete_site_option('gwaa_tr_state');
delete_option('gwaa_tr_postalcode');
delete_site_option('gwaa_tr_postalcode');
delete_option('gwaa_tr_country');
delete_site_option('gwaa_tr_country');
delete_option('gwaa_cf7_geo_gpa_page');
delete_site_option('gwaa_cf7_geo_gpa_page');

