<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('od_rest_api_unavailable');
delete_site_option('od_rest_api_unavailable');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('od_rest_api_health_check_response');
delete_site_transient('od_rest_api_health_check_response');

// Clear Cron Jobs
wp_clear_scheduled_hook('od_trigger_page_cache_invalidation');

