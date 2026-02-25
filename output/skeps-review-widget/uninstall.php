<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgr_site_token');
delete_site_option('sgr_site_token');
delete_option('sgr_location_id');
delete_site_option('sgr_location_id');
delete_option('sgr_location_info');
delete_site_option('sgr_location_info');

// Delete Transients
delete_transient('skeps_connector_api_error');
delete_site_transient('skeps_connector_api_error');
delete_transient('sgr_accounts_cache');
delete_site_transient('sgr_accounts_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('sgr_update_location');

