<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_reviews_option_name');
delete_site_option('google_reviews_option_name');
delete_option('gr_latest_results');
delete_site_option('gr_latest_results');
delete_option('grwp_place_info');
delete_site_option('grwp_place_info');
delete_option('gr_latest_results_free');
delete_site_option('gr_latest_results_free');
delete_option('google_reviews_style');
delete_site_option('google_reviews_style');
delete_option('google_reviews_slider_settings');
delete_site_option('google_reviews_slider_settings');
delete_option('grwp_activation_version');
delete_site_option('grwp_activation_version');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('get_google_reviews');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

