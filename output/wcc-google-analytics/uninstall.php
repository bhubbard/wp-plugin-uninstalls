<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_analytics_client_id');
delete_site_option('google_analytics_client_id');
delete_option('google_analytics_client_secret');
delete_site_option('google_analytics_client_secret');
delete_option('google_analytics_auth');
delete_site_option('google_analytics_auth');
delete_option('google_analytics_api_key');
delete_site_option('google_analytics_api_key');
delete_option('google_analytics_db_version');
delete_site_option('google_analytics_db_version');

