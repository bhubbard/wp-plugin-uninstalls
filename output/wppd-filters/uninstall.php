<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppdfi_settings');
delete_site_option('wppdfi_settings');
delete_option('wppdfi_version');
delete_site_option('wppdfi_version');
delete_option('wppdfi_db_version');
delete_site_option('wppdfi_db_version');
delete_option('wppdfi_network_settings');
delete_site_option('wppdfi_network_settings');

// Delete Transients
delete_transient('wppdfi_activated');
delete_site_transient('wppdfi_activated');
delete_transient('wppdfi_metadata');
delete_site_transient('wppdfi_metadata');
delete_transient('wppdfi_api_cache');
delete_site_transient('wppdfi_api_cache');
delete_transient('wppdfi_health_cache');
delete_site_transient('wppdfi_health_cache');
delete_transient('wppdfi_rating_cache');
delete_site_transient('wppdfi_rating_cache');
delete_transient('wppdfi_activation_notice');
delete_site_transient('wppdfi_activation_notice');
delete_transient('wppdfi_deactivated');
delete_site_transient('wppdfi_deactivated');
delete_transient('wppdfi_uninstall_backup');
delete_site_transient('wppdfi_uninstall_backup');

// Clear Cron Jobs
wp_clear_scheduled_hook('wppdfi_cleanup');
wp_clear_scheduled_hook('wppdfi_warm_cache');

