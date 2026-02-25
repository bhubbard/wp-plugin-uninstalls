<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b0xT_admin_country');
delete_site_option('b0xT_admin_country');
delete_option('b0xT_zipcode_label');
delete_site_option('b0xT_zipcode_label');
delete_option('b0xT_distance_api');
delete_site_option('b0xT_distance_api');
delete_option('b0xT_mode');
delete_site_option('b0xT_mode');
delete_option('b0xT_payment_info');
delete_site_option('b0xT_payment_info');
delete_option('b0xT_thank_you_page');
delete_site_option('b0xT_thank_you_page');
delete_option('b0xT_api_mode');
delete_site_option('b0xT_api_mode');
delete_option('b0xT_google_api_key');
delete_site_option('b0xT_google_api_key');
delete_option('b0xT_username');
delete_site_option('b0xT_username');
delete_option('b0xT_password');
delete_site_option('b0xT_password');
delete_option('b0xT_admin_debug');
delete_site_option('b0xT_admin_debug');
delete_option('b0xT_google_validation_bypass');
delete_site_option('b0xT_google_validation_bypass');
delete_option('b0xT_page_title');
delete_site_option('b0xT_page_title');

