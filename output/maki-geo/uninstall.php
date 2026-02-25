<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mgeo_geo_rules');
delete_site_option('mgeo_geo_rules');
delete_option('mgeo_client_server_mode');
delete_site_option('mgeo_client_server_mode');
delete_option('mgeo_api_key');
delete_site_option('mgeo_api_key');
delete_option('mgeo_monthly_requests');
delete_site_option('mgeo_monthly_requests');
delete_option('mgeo_request_limit');
delete_site_option('mgeo_request_limit');

