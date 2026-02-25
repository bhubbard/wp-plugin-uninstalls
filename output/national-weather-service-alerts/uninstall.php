<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nws_alerts_version');
delete_site_option('nws_alerts_version');
delete_option('nws_alerts_tables_built');
delete_site_option('nws_alerts_tables_built');
delete_option('nws_alerts_google_maps_api_key');
delete_site_option('nws_alerts_google_maps_api_key');
delete_option('nws_alerts_alerts_bar_enabled');
delete_site_option('nws_alerts_alerts_bar_enabled');
delete_option('nws_alerts_alerts_bar_zip');
delete_site_option('nws_alerts_alerts_bar_zip');
delete_option('nws_alerts_alerts_bar_city');
delete_site_option('nws_alerts_alerts_bar_city');
delete_option('nws_alerts_alerts_bar_state');
delete_site_option('nws_alerts_alerts_bar_state');
delete_option('nws_alerts_alerts_bar_county');
delete_site_option('nws_alerts_alerts_bar_county');
delete_option('nws_alerts_alerts_bar_location_title');
delete_site_option('nws_alerts_alerts_bar_location_title');
delete_option('nws_alerts_alerts_bar_scope');
delete_site_option('nws_alerts_alerts_bar_scope');
delete_option('nws_alerts_alerts_bar_limit');
delete_site_option('nws_alerts_alerts_bar_limit');
delete_option('nws_alerts_alerts_bar_fix');
delete_site_option('nws_alerts_alerts_bar_fix');

// Delete Transients
delete_transient('nws_alerts_populate_tables_args');
delete_site_transient('nws_alerts_populate_tables_args');
delete_transient('nws_alerts_populate_tables_current_file');
delete_site_transient('nws_alerts_populate_tables_current_file');
delete_transient('nws_alerts_populate_tables_current_part');
delete_site_transient('nws_alerts_populate_tables_current_part');

