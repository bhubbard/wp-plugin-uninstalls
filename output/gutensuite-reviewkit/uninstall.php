<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gutensuite_reviewkit_activation_flag');
delete_site_option('gutensuite_reviewkit_activation_flag');
delete_option('gutensuite_reviewkit_tp_reviews_original_domain');
delete_site_option('gutensuite_reviewkit_tp_reviews_original_domain');
delete_option('gutensuite_reviewkit_tp_reviews_data');
delete_site_option('gutensuite_reviewkit_tp_reviews_data');
delete_option('gutensuite_reviewkit_tp_reviews_business_data');
delete_site_option('gutensuite_reviewkit_tp_reviews_business_data');
delete_option('gutensuite_reviewkit_tp_reviews_misc_data');
delete_site_option('gutensuite_reviewkit_tp_reviews_misc_data');
delete_option('gutensuite_reviewkit_tp_reviews_domain');
delete_site_option('gutensuite_reviewkit_tp_reviews_domain');
delete_option('gutensuite_reviewkit_tp_reviews_count');
delete_site_option('gutensuite_reviewkit_tp_reviews_count');
delete_option('gutensuite_reviewkit_tp_reviews_last_updated');
delete_site_option('gutensuite_reviewkit_tp_reviews_last_updated');
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
wp_clear_scheduled_hook('gutensuite_reviewkit_sync_reviews_cron');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

