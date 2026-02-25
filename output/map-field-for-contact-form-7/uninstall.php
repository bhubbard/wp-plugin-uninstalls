<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmfcf_country_code');
delete_site_option('gmfcf_country_code');
delete_option('gmfcf_address_option');
delete_site_option('gmfcf_address_option');
delete_option('gmfcf_cf7_geo_api_key');
delete_site_option('gmfcf_cf7_geo_api_key');
delete_option('gmfcf_map_height');
delete_site_option('gmfcf_map_height');
delete_option('gmfcf_cf7_geo_gpa_page');
delete_site_option('gmfcf_cf7_geo_gpa_page');

