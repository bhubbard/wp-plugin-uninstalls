<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cross_service_solutions_show_provider');
delete_site_option('cross_service_solutions_show_provider');
delete_option('cross_service_solutions_api_key');
delete_site_option('cross_service_solutions_api_key');
delete_option('cross_service_solutions_all_activate_plugins');
delete_site_option('cross_service_solutions_all_activate_plugins');

