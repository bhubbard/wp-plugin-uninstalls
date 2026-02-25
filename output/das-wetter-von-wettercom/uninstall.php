<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wettercom_api_user');
delete_site_option('wettercom_api_user');
delete_option('wettercom_api_key');
delete_site_option('wettercom_api_key');
delete_option('wettercom_api_citycode');
delete_site_option('wettercom_api_citycode');
delete_option('wettercom_data_forecast');
delete_site_option('wettercom_data_forecast');
delete_option('wettercom_data_updatetime');
delete_site_option('wettercom_data_updatetime');
delete_option('wettercom_api_secret');
delete_site_option('wettercom_api_secret');

