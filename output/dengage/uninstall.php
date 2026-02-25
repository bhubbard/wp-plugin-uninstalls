<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dengage_cdmp_api_username');
delete_site_option('dengage_cdmp_api_username');
delete_option('dengage_cdmp_api_password');
delete_site_option('dengage_cdmp_api_password');
delete_option('dengage_cdmp_execution_mode');
delete_site_option('dengage_cdmp_execution_mode');
delete_option('dengage_cdmp_region');
delete_site_option('dengage_cdmp_region');
delete_option('dengage_cdmp_sdk_script');
delete_site_option('dengage_cdmp_sdk_script');
delete_option('dengage_accessToken');
delete_site_option('dengage_accessToken');

// Clear Cron Jobs
wp_clear_scheduled_hook('dengage_enqueue');

