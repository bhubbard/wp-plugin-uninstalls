<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inpipe_anonymize_ip');
delete_site_option('inpipe_anonymize_ip');
delete_option('inpipe_tracked_cache_keys');
delete_site_option('inpipe_tracked_cache_keys');
delete_option('inpipe_subscription');
delete_site_option('inpipe_subscription');
delete_option('inpipe_license_status');
delete_site_option('inpipe_license_status');
delete_option('inpipe_assets_version');
delete_site_option('inpipe_assets_version');
delete_option('inpipe_api_key');
delete_site_option('inpipe_api_key');
delete_option('inpipe_license_features');
delete_site_option('inpipe_license_features');
delete_option('inpipe_subscription_log_retention_days');
delete_site_option('inpipe_subscription_log_retention_days');
delete_option('inpipe_settings');
delete_site_option('inpipe_settings');
delete_option('inpipe_premium_status');
delete_site_option('inpipe_premium_status');
delete_option('inpipe_has_premium');
delete_site_option('inpipe_has_premium');
delete_option('inpipe_premium_version');
delete_site_option('inpipe_premium_version');
delete_option('inpipe_usage_data');
delete_site_option('inpipe_usage_data');
delete_option('inpipe_last_webhook');
delete_site_option('inpipe_last_webhook');
delete_option('inpipe_premium_settings');
delete_site_option('inpipe_premium_settings');
delete_option('inpipe_premium_enabled_date');
delete_site_option('inpipe_premium_enabled_date');
delete_option('inpipe_utm_processing_enabled');
delete_site_option('inpipe_utm_processing_enabled');
delete_option('inpipe_batch_size');
delete_site_option('inpipe_batch_size');
delete_option('inpipe_batch_interval');
delete_site_option('inpipe_batch_interval');
delete_option('inpipe_is_configured');
delete_site_option('inpipe_is_configured');
delete_option('inpipe_tracking_server_url');
delete_site_option('inpipe_tracking_server_url');
delete_option('inpipe_last_sync');
delete_site_option('inpipe_last_sync');
delete_option('inpipe_db_version');
delete_site_option('inpipe_db_version');
delete_option('inpipe_install_error');
delete_site_option('inpipe_install_error');
delete_option('inpipe_installing_table');
delete_site_option('inpipe_installing_table');
delete_option('inpipe_last_backup');
delete_site_option('inpipe_last_backup');
delete_option('inpipe_premium_integrated');
delete_site_option('inpipe_premium_integrated');
delete_option('inpipe_premium_install_status');
delete_site_option('inpipe_premium_install_status');
delete_option('inpipe_temp_subscription_code');
delete_site_option('inpipe_temp_subscription_code');
delete_option('inpipe_pending_premium_package');
delete_site_option('inpipe_pending_premium_package');
delete_option('inpipe_pending_refresh_after_install');
delete_site_option('inpipe_pending_refresh_after_install');
delete_option('inpipe_premium_install_date');
delete_site_option('inpipe_premium_install_date');
delete_option('inpipe_premium_active');
delete_site_option('inpipe_premium_active');
delete_option('inpipe_premium_verification_error');
delete_site_option('inpipe_premium_verification_error');
delete_option('inpipe_premium_installed');
delete_site_option('inpipe_premium_installed');
delete_option('inpipe_verification_data');
delete_site_option('inpipe_verification_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_inpipe_%', '_site_transient_inpipe_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_inpipe_table_created_%', '_site_transient_inpipe_table_created_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_inpipe_tables_created_%', '_site_transient_inpipe_tables_created_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('inpipe_installing');
delete_site_transient('inpipe_installing');
delete_transient('inpipe_hard_refresh_required');
delete_site_transient('inpipe_hard_refresh_required');

// Clear Cron Jobs
wp_clear_scheduled_hook('inpipe_cleanup_nonce_transients');
wp_clear_scheduled_hook('inpipe_sync_subscription_data');
wp_clear_scheduled_hook('inpipe_background_premium_installation');
wp_clear_scheduled_hook('inpipe_daily_cleanup');
wp_clear_scheduled_hook('inpipe_send_events');
wp_clear_scheduled_hook('inpipe_cleanup_logs');
wp_clear_scheduled_hook('inpipe_cleanup_queue');
wp_clear_scheduled_hook('inpipe_utm_logs_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'inpipe_premium_workflow_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'inpipe_premium_workflow_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'inpipe_premium_workflow_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'inpipe_premium_workflow_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'inpipe_queued_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'inpipe_queued_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'inpipe_queued_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'inpipe_queued_notices' ) );

