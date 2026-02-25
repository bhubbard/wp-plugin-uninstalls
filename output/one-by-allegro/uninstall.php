<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onedelivery_company_name');
delete_site_option('onedelivery_company_name');
delete_option('onedelivery_postcode');
delete_site_option('onedelivery_postcode');
delete_option('onedelivery_city');
delete_site_option('onedelivery_city');
delete_option('onedelivery_street');
delete_site_option('onedelivery_street');
delete_option('onedelivery_street_number');
delete_site_option('onedelivery_street_number');
delete_option('onedelivery_country_code');
delete_site_option('onedelivery_country_code');
delete_option('onedelivery_api_username');
delete_site_option('onedelivery_api_username');
delete_option('onedelivery_api_password');
delete_site_option('onedelivery_api_password');
delete_option('onedelivery_label_format');
delete_site_option('onedelivery_label_format');

// Clear Cron Jobs
wp_clear_scheduled_hook('onebyal_wcs_process_tracking_orders');

