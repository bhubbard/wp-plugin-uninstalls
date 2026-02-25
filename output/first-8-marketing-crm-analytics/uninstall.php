<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f8mcrm_analytics_connection_start');
delete_site_option('f8mcrm_analytics_connection_start');
delete_option('f8mcrm_analytics_connection_complete');
delete_site_option('f8mcrm_analytics_connection_complete');
delete_option('f8mcrm_analytics_plugin_data_sent');
delete_site_option('f8mcrm_analytics_plugin_data_sent');
delete_option('f8mcrm_analytics_auto_export_enabled');
delete_site_option('f8mcrm_analytics_auto_export_enabled');
delete_option('f8mcrm_analytics_tracking_website_id');
delete_site_option('f8mcrm_analytics_tracking_website_id');
delete_option('f8mcrm_analytics_tracking_script_url');
delete_site_option('f8mcrm_analytics_tracking_script_url');
delete_option('site_unique_id');
delete_site_option('site_unique_id');
delete_option('f8mcrm_analytics_is_tracking_injected');
delete_site_option('f8mcrm_analytics_is_tracking_injected');
delete_option('f8mcrm_analytics_marketing_api_key');
delete_site_option('f8mcrm_analytics_marketing_api_key');
delete_option('f8mcrm_analytics_custom_tracking_enabled');
delete_site_option('f8mcrm_analytics_custom_tracking_enabled');
delete_option('f8mcrm_analytics_contents_exported');
delete_site_option('f8mcrm_analytics_contents_exported');
delete_option('f8mcrm_analytics_last_export_timestamp');
delete_site_option('f8mcrm_analytics_last_export_timestamp');

// Delete Transients
delete_transient('f8mcrm_analytics_activation_redirect');
delete_site_transient('f8mcrm_analytics_activation_redirect');
delete_transient('f8mcrm_analytics_connection_status');
delete_site_transient('f8mcrm_analytics_connection_status');
delete_transient('f8mcrm_analytics_plugin_data');
delete_site_transient('f8mcrm_analytics_plugin_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('f8mcrm_analytics_retry_plugin_data');
wp_clear_scheduled_hook('f8mcrm_analytics_export_single_post');

