<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webnalytics_v3_flow_last_run');
delete_site_option('webnalytics_v3_flow_last_run');
delete_option('webnalytics_v3_flow_last_error');
delete_site_option('webnalytics_v3_flow_last_error');
delete_option('webnalytics_v3_heatmap_last_ping');
delete_site_option('webnalytics_v3_heatmap_last_ping');
delete_option('webnalytics_v3_last_rest_access');
delete_site_option('webnalytics_v3_last_rest_access');
delete_option('webnalytics_v3_version');
delete_site_option('webnalytics_v3_version');
delete_option('webnalytics_v3_settings');
delete_site_option('webnalytics_v3_settings');
delete_option('webnalytics_v3_db_ver');
delete_site_option('webnalytics_v3_db_ver');
delete_option('webnalytics_v3_public_collector_key');
delete_site_option('webnalytics_v3_public_collector_key');
delete_option('webnalytics_v3_heatmap_last_click');
delete_site_option('webnalytics_v3_heatmap_last_click');

// Delete Transients
delete_transient('webnalytics_v3_flow_lock');
delete_site_transient('webnalytics_v3_flow_lock');

