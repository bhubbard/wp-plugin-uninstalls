<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('print_app_domain_key');
delete_site_option('print_app_domain_key');
delete_option('print_app_secret_key');
delete_site_option('print_app_secret_key');
delete_option('print_app_cust_download_link');
delete_site_option('print_app_cust_download_link');

