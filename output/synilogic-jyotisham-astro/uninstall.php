<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jyotisham_api_key');
delete_site_option('jyotisham_api_key');
delete_option('jyotisham_google_maps_key');
delete_site_option('jyotisham_google_maps_key');
delete_option('jyotisham_api_status');
delete_site_option('jyotisham_api_status');
delete_option('jyotisham_usage_stats');
delete_site_option('jyotisham_usage_stats');
delete_option('jyotisham_api_calls_made');
delete_site_option('jyotisham_api_calls_made');
delete_option('jyotisham_api_last_call');
delete_site_option('jyotisham_api_last_call');
delete_option('jyotisham_plugin_version');
delete_site_option('jyotisham_plugin_version');

