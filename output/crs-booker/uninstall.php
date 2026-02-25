<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crsbkr_hue');
delete_site_option('crsbkr_hue');
delete_option('crsbkr_sat');
delete_site_option('crsbkr_sat');
delete_option('crsbkr_lig');
delete_site_option('crsbkr_lig');
delete_option('crsbkr_booking_endpoint');
delete_site_option('crsbkr_booking_endpoint');
delete_option('crsbkr_endpoint');
delete_site_option('crsbkr_endpoint');
delete_option('crsbkr_uuid');
delete_site_option('crsbkr_uuid');
delete_option('crsbkr_api_key');
delete_site_option('crsbkr_api_key');
delete_option('crsbkr_search_results_page');
delete_site_option('crsbkr_search_results_page');

