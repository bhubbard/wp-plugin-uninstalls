<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('readmo_ai_settings');
delete_site_option('readmo_ai_settings');
delete_option('readmo_ai_auto_insert');
delete_site_option('readmo_ai_auto_insert');

// Delete Transients
delete_transient('readmo_ai_client_id');
delete_site_transient('readmo_ai_client_id');
delete_transient('readmo_ai_path_info');
delete_site_transient('readmo_ai_path_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('readmo_ai_daily_cleanup');

