<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
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
delete_option('llmagnet_last_generated');
delete_site_option('llmagnet_last_generated');
delete_option('llmagnet_ai_seo_optimizer_image_count');
delete_site_option('llmagnet_ai_seo_optimizer_image_count');
delete_option('llmagnet_ai_seo_optimizer_images_without_alt');
delete_site_option('llmagnet_ai_seo_optimizer_images_without_alt');
delete_option('llmagnet_ai_seo_optimizer_settings');
delete_site_option('llmagnet_ai_seo_optimizer_settings');
delete_option('llmagnet_report_email');
delete_site_option('llmagnet_report_email');
delete_option('llmagnet_report_template');
delete_site_option('llmagnet_report_template');
delete_option('llmagnet_report_frequency');
delete_site_option('llmagnet_report_frequency');
delete_option('llmagnet_report_send_time');
delete_site_option('llmagnet_report_send_time');
delete_option('llmagnet_report_company_logo');
delete_site_option('llmagnet_report_company_logo');
delete_option('llmagnet_plan');
delete_site_option('llmagnet_plan');
delete_option('llmagnet_is_trial');
delete_site_option('llmagnet_is_trial');
delete_option('llmagnet_db_version');
delete_site_option('llmagnet_db_version');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('llmagnet_woo_active');
delete_site_transient('llmagnet_woo_active');
delete_transient('llmagnet_product_paths');
delete_site_transient('llmagnet_product_paths');
delete_transient('llmagnet_ai_seo_optimizer_last_run');
delete_site_transient('llmagnet_ai_seo_optimizer_last_run');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('llmagnet_ai_seo_daily_event');
wp_clear_scheduled_hook('llmagnet_visibility_score_daily');
wp_clear_scheduled_hook('llmagnet_scheduled_email_report');
wp_clear_scheduled_hook('llmagnet_weekly_analytics_report');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

