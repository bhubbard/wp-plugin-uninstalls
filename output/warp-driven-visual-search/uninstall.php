<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wd_api_key');
delete_site_option('wd_api_key');
delete_option('wd_data_server_key');
delete_site_option('wd_data_server_key');
delete_option('wd_data_server');
delete_site_option('wd_data_server');
delete_option('wd_custom_js');
delete_site_option('wd_custom_js');
delete_option('wd_is_test_mode');
delete_site_option('wd_is_test_mode');

