<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('robonobo_weight_rates');
delete_site_option('robonobo_weight_rates');
delete_option('robonobo_api_key');
delete_site_option('robonobo_api_key');
delete_option('robonobo_api_secret');
delete_site_option('robonobo_api_secret');
delete_option('robonobo_max_hour_for_today_delivery');
delete_site_option('robonobo_max_hour_for_today_delivery');
delete_option('robonobo_webhook_password');
delete_site_option('robonobo_webhook_password');
delete_option('robonobo_company_name');
delete_site_option('robonobo_company_name');
delete_option('robonobo_login');
delete_site_option('robonobo_login');
delete_option('robonobo_secret');
delete_site_option('robonobo_secret');
delete_option('robonobo_company_address');
delete_site_option('robonobo_company_address');

