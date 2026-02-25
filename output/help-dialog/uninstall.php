<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ephd_one_time_notices');
delete_site_option('ephd_one_time_notices');
delete_option('ephd_ongoing_notices');
delete_site_option('ephd_ongoing_notices');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('ephd_run_setup');
delete_site_option('ephd_run_setup');
delete_option('ephd_version');
delete_site_option('ephd_version');
delete_option('ephd_error_log');
delete_site_option('ephd_error_log');
delete_option('ephd_global_config');
delete_site_option('ephd_global_config');
delete_option('ephd_notification_rules_config');
delete_site_option('ephd_notification_rules_config');
delete_option('ephd_show_upgrade_message');
delete_site_option('ephd_show_upgrade_message');
delete_option('ephd_analytics_purge_date');
delete_site_option('ephd_analytics_purge_date');

// Delete Transients
delete_transient('_ephd_advanced_search_debug_activated');
delete_site_transient('_ephd_advanced_search_debug_activated');
delete_transient('_ephd_plugin_activated');
delete_site_transient('_ephd_plugin_activated');
delete_transient('_ephd_delete_all_hd_data');
delete_site_transient('_ephd_delete_all_hd_data');
delete_transient('_ephd_plugin_installed');
delete_site_transient('_ephd_plugin_installed');

