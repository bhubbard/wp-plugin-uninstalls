<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_wp_cgntvdnmc_api_key');
delete_site_option('ai_wp_cgntvdnmc_api_key');
delete_option('ai_wp_cgntvdnmc_resolution');
delete_site_option('ai_wp_cgntvdnmc_resolution');
delete_option('ai_wp_cgntvdnmc_variations_num');
delete_site_option('ai_wp_cgntvdnmc_variations_num');
delete_option('ai_wp_cgntvdnmc_text_to_image_resolution');
delete_site_option('ai_wp_cgntvdnmc_text_to_image_resolution');
delete_option('ai_wp_cgntvdnmc_chosen_ai_model');
delete_site_option('ai_wp_cgntvdnmc_chosen_ai_model');
delete_option('ai_wp_cgntvdnmc_text_to_image_quality');
delete_site_option('ai_wp_cgntvdnmc_text_to_image_quality');
delete_option('ai_wp_cgntvdnmc_text_to_image_style');
delete_site_option('ai_wp_cgntvdnmc_text_to_image_style');
delete_option('ai_wp_cgntvdnmc_text_to_image_results');
delete_site_option('ai_wp_cgntvdnmc_text_to_image_results');
delete_option('ai_wp_cgntvdnmc_settings');
delete_site_option('ai_wp_cgntvdnmc_settings');
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
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

