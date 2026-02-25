<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfelr_cf_health');
delete_site_option('cfelr_cf_health');
delete_option('cfelr_sample_link_created');
delete_site_option('cfelr_sample_link_created');
delete_option('cfelr_plugin_version');
delete_site_option('cfelr_plugin_version');
delete_option('cfelr_edge_enabled');
delete_site_option('cfelr_edge_enabled');
delete_option('cfelr_reconcile_log');
delete_site_option('cfelr_reconcile_log');
delete_option('cfelr_settings');
delete_site_option('cfelr_settings');
delete_option('cfelr_cf_token_encrypted');
delete_site_option('cfelr_cf_token_encrypted');
delete_option('cfelr_last_publish');
delete_site_option('cfelr_last_publish');
delete_option('cfelr_cf_route_id');
delete_site_option('cfelr_cf_route_id');

// Delete Transients
delete_transient('cfelr_form_errors');
delete_site_transient('cfelr_form_errors');
delete_transient('cfelr_form_data');
delete_site_transient('cfelr_form_data');
delete_transient('cfelr_import_error');
delete_site_transient('cfelr_import_error');
delete_transient('cfelr_import_results');
delete_site_transient('cfelr_import_results');
delete_transient('cfelr_edge_publish_debounce');
delete_site_transient('cfelr_edge_publish_debounce');

// Clear Cron Jobs
wp_clear_scheduled_hook('cfelr_reconcile');

