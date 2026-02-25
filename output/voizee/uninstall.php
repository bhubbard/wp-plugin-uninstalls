<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voizee_api_key');
delete_site_option('voizee_api_key');
delete_option('voizee_widget_script');
delete_site_option('voizee_widget_script');
delete_option('voizee_api_dashboard_enabled');
delete_site_option('voizee_api_dashboard_enabled');
delete_option('voizee_api_cf7_enabled');
delete_site_option('voizee_api_cf7_enabled');
delete_option('voizee_api_gf_enabled');
delete_site_option('voizee_api_gf_enabled');
delete_option('voizee_api_cf7_logs');
delete_site_option('voizee_api_cf7_logs');
delete_option('voizee_api_gf_logs');
delete_site_option('voizee_api_gf_logs');

// Delete Transients
delete_transient('voizee_stats_cache');
delete_site_transient('voizee_stats_cache');

