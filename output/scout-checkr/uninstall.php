<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_status_do_activation_redirect');
delete_site_option('wp_status_do_activation_redirect');
delete_option('grafana_dashboard_title');
delete_site_option('grafana_dashboard_title');
delete_option('grafana_api');
delete_site_option('grafana_api');
delete_option('grafana_url');
delete_site_option('grafana_url');
delete_option('grafana_dashboard_url');
delete_site_option('grafana_dashboard_url');
delete_option('grafana_dashboard_id');
delete_site_option('grafana_dashboard_id');
delete_option('grafana_dashboard_uid');
delete_site_option('grafana_dashboard_uid');
delete_option('grafana_dashboard_version');
delete_site_option('grafana_dashboard_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('spiral_grafana_test_results_event');

