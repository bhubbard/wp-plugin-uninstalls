<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b0xTPortal_admin_country');
delete_site_option('b0xTPortal_admin_country');
delete_option('b0xT_google_api_key');
delete_site_option('b0xT_google_api_key');
delete_option('b0xTPortal_username');
delete_site_option('b0xTPortal_username');
delete_option('b0xTPortal_password');
delete_site_option('b0xTPortal_password');
delete_option('b0xTPortal_google_api_key');
delete_site_option('b0xTPortal_google_api_key');
delete_option('b0xTPortal_mode');
delete_site_option('b0xTPortal_mode');
delete_option('b0xTPortal_zipcode_label');
delete_site_option('b0xTPortal_zipcode_label');
delete_option('b0xTPortal_page_title');
delete_site_option('b0xTPortal_page_title');

