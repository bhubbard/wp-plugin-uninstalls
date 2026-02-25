<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7m_rebrand_seen');
delete_site_option('cf7m_rebrand_seen');
delete_option('cf7m_onboarding_completed');
delete_site_option('cf7m_onboarding_completed');
delete_option('cf7m_onboarding_skipped');
delete_site_option('cf7m_onboarding_skipped');
delete_option('cf7m_features');
delete_site_option('cf7m_features');
delete_option('cf7m_install_date');
delete_site_option('cf7m_install_date');
delete_option('divi_cf7_styler_install_date');
delete_site_option('divi_cf7_styler_install_date');
delete_option('cf7m_current_version');
delete_site_option('cf7m_current_version');
delete_option('cf7m_webhook_urls');
delete_site_option('cf7m_webhook_urls');
delete_option('cf7m_onboarding_step');
delete_site_option('cf7m_onboarding_step');
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
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cf7m_run_onboarding_%', '_site_transient_cf7m_run_onboarding_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
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

