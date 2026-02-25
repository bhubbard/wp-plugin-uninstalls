<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admon_delete_data');
delete_site_option('admon_delete_data');
delete_option('admon_front_end');
delete_site_option('admon_front_end');
delete_option('admon_front_end_link');
delete_site_option('admon_front_end_link');
delete_option('admon_rest_api');
delete_site_option('admon_rest_api');
delete_option('admon_rest_api_link');
delete_site_option('admon_rest_api_link');
delete_option('admon_excluded_pages');
delete_site_option('admon_excluded_pages');
delete_option('admon_excluded_routes');
delete_site_option('admon_excluded_routes');

