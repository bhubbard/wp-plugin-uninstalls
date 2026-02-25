<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smt_cf7_enable_conversion_tracking');
delete_site_option('smt_cf7_enable_conversion_tracking');
delete_option('smt_cf7_google_ads_conversion_id');
delete_site_option('smt_cf7_google_ads_conversion_id');
delete_option('smt_cf7_google_ads_conversion_label');
delete_site_option('smt_cf7_google_ads_conversion_label');
delete_option('smt_cf7_ga_measurement_id');
delete_site_option('smt_cf7_ga_measurement_id');
delete_option('smt_cf7_ga_api_secret');
delete_site_option('smt_cf7_ga_api_secret');
delete_option('smt_cf7_enable_facebook_conversion_tracking');
delete_site_option('smt_cf7_enable_facebook_conversion_tracking');
delete_option('smt_cf7_facebook_pixel_id');
delete_site_option('smt_cf7_facebook_pixel_id');
delete_option('smt_cf7_db_version');
delete_site_option('smt_cf7_db_version');

