<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contlo_connect_token');
delete_site_option('contlo_connect_token');
delete_option('contlo_api_key');
delete_site_option('contlo_api_key');
delete_option('store_public_key');
delete_site_option('store_public_key');
delete_option('logs_enabled');
delete_site_option('logs_enabled');
delete_option('event_tracking_enabled');
delete_site_option('event_tracking_enabled');

