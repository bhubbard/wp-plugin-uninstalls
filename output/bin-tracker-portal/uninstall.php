<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b1nTPortal_admin_country');
delete_site_option('b1nTPortal_admin_country');
delete_option('b1nTPortal_google_api_key');
delete_site_option('b1nTPortal_google_api_key');
delete_option('b1nTPortal_username');
delete_site_option('b1nTPortal_username');
delete_option('b1nTPortal_password');
delete_site_option('b1nTPortal_password');
delete_option('b1nTPortal_mode');
delete_site_option('b1nTPortal_mode');
delete_option('b1nTPortal_zipcode_label');
delete_site_option('b1nTPortal_zipcode_label');
delete_option('b1nTPortal_page_title');
delete_site_option('b1nTPortal_page_title');

