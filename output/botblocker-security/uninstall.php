<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbcs_activation_prevent_redirect');
delete_site_option('bbcs_activation_prevent_redirect');
delete_option('bbcs_setup_wizard_completed');
delete_site_option('bbcs_setup_wizard_completed');
delete_option('bbcs_initial_version');
delete_site_option('bbcs_initial_version');
delete_option('bbcs_wizard_preset');
delete_site_option('bbcs_wizard_preset');
delete_option('bbcs_wizard_ux_mode');
delete_site_option('bbcs_wizard_ux_mode');
delete_option('bbcs_wizard_captcha_mode');
delete_site_option('bbcs_wizard_captcha_mode');
delete_option('bbcs_wizard_init_mode');
delete_site_option('bbcs_wizard_init_mode');
delete_option('bbcs_wizard_cache_type');
delete_site_option('bbcs_wizard_cache_type');
delete_option('bbcs_setup_wizard_completed_at');
delete_site_option('bbcs_setup_wizard_completed_at');
delete_option('botblocker_tools_core_settings');
delete_site_option('botblocker_tools_core_settings');
delete_option('botblocker_tools_login_settings');
delete_site_option('botblocker_tools_login_settings');
delete_option('botblocker_active_addons');
delete_site_option('botblocker_active_addons');
delete_option('bbcs_2fa_rules_version');
delete_site_option('bbcs_2fa_rules_version');

// Delete Transients
delete_transient('bbcs_activation_redirect');
delete_site_transient('bbcs_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bbcs_notice_cloud_api_%', '_site_transient_bbcs_notice_cloud_api_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bbcs_notice_integrations_%', '_site_transient_bbcs_notice_integrations_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bbcs_notice_settings_%', '_site_transient_bbcs_notice_settings_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('bbcs_just_activated');
delete_site_transient('bbcs_just_activated');
delete_transient('bbcs_site_health_list');
delete_site_transient('bbcs_site_health_list');
delete_transient('bbcs_site_health');
delete_site_transient('bbcs_site_health');
delete_transient('bbcs_cloud_api_expired_alert');
delete_site_transient('bbcs_cloud_api_expired_alert');
delete_transient('bbcs_cloud_api_hits_exhausted_alert');
delete_site_transient('bbcs_cloud_api_hits_exhausted_alert');
delete_transient('bbcs_cloud_api_status_transient');
delete_site_transient('bbcs_cloud_api_status_transient');
delete_transient('bbcs_cloud_connection_failed_alert');
delete_site_transient('bbcs_cloud_connection_failed_alert');
delete_transient('bbcs_missing_files_alert');
delete_site_transient('bbcs_missing_files_alert');
delete_transient('bbcs_remaining_days');
delete_site_transient('bbcs_remaining_days');
delete_transient('bbcs_remaining_hits');
delete_site_transient('bbcs_remaining_hits');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bbcs_2fa_attempts_%', '_site_transient_bbcs_2fa_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('bbcs_daily_task');
wp_clear_scheduled_hook('bbcs_hourly_task');
wp_clear_scheduled_hook('bbcs_weekly_task');
wp_clear_scheduled_hook('bbcs_five_days_task');
wp_clear_scheduled_hook('bbcs_two_hours_task');
wp_clear_scheduled_hook('bbcs_one_time_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_secret_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_secret_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_secret_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_secret_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_backup_codes_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_backup_codes_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_backup_codes_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_backup_codes_temp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_setup_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_setup_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_setup_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_setup_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_2fa_redirect_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_2fa_redirect_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_2fa_redirect_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_2fa_redirect_to' ) );

