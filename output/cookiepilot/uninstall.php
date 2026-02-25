<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookiepilot_mode');
delete_site_option('cookiepilot_mode');
delete_option('cookiepilot_access_token');
delete_site_option('cookiepilot_access_token');
delete_option('cookiepilot_refresh_token');
delete_site_option('cookiepilot_refresh_token');
delete_option('cookiepilot_domain_id');
delete_site_option('cookiepilot_domain_id');
delete_option('cookiepilot_api_key');
delete_site_option('cookiepilot_api_key');
delete_option('cookiepilot_agency_token');
delete_site_option('cookiepilot_agency_token');

// Delete Transients
delete_transient('cookiepilot_config_cache');
delete_site_transient('cookiepilot_config_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('cookiepilot_daily_cleanup');

