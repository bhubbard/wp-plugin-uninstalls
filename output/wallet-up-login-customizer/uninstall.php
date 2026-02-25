<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wallet_up_lc_options');
delete_site_option('wallet_up_lc_options');
delete_option('wallet_up_lc_last_sync');
delete_site_option('wallet_up_lc_last_sync');
delete_option('wallet_up_lc_sync_queue');
delete_site_option('wallet_up_lc_sync_queue');
delete_option('wallet_up_lc_version');
delete_site_option('wallet_up_lc_version');
delete_option('wallet_up_lc_security_options');
delete_site_option('wallet_up_lc_security_options');
delete_option('wallet_up_lc_security_logs');
delete_site_option('wallet_up_lc_security_logs');
delete_option('wallet_up_lc_security_digest');
delete_site_option('wallet_up_lc_security_digest');
delete_option('wallet_up_lc_security_digest_enabled');
delete_site_option('wallet_up_lc_security_digest_enabled');
delete_option('wallet_up_lc_blocked_ips');
delete_site_option('wallet_up_lc_blocked_ips');
delete_option('wallet_up_lc_settings');
delete_site_option('wallet_up_lc_settings');
delete_option('wallet_up_lc_logo_settings');
delete_site_option('wallet_up_lc_logo_settings');
delete_option('wallet_up_options');
delete_site_option('wallet_up_options');
delete_option('wallet_up_lc_2fa_enforce_all');
delete_site_option('wallet_up_lc_2fa_enforce_all');
delete_option('wallet_up_lc_2fa_enforced_roles');
delete_site_option('wallet_up_lc_2fa_enforced_roles');
delete_option('wallet_up_lc_2fa_encryption_key');
delete_site_option('wallet_up_lc_2fa_encryption_key');
delete_option('wallet_up_lc_2fa_grace_period_hours');
delete_site_option('wallet_up_lc_2fa_grace_period_hours');
delete_option('wallet_up_lc_2fa_max_grace_logins');
delete_site_option('wallet_up_lc_2fa_max_grace_logins');
delete_option('wallet_up_lc_2fa_setup_max_attempts');
delete_site_option('wallet_up_lc_2fa_setup_max_attempts');
delete_option('wallet_up_lc_2fa_setup_lockout_time');
delete_site_option('wallet_up_lc_2fa_setup_lockout_time');
delete_option('wallet_up_lc_2fa_max_attempts');
delete_site_option('wallet_up_lc_2fa_max_attempts');
delete_option('wallet_up_lc_2fa_lockout_time');
delete_site_option('wallet_up_lc_2fa_lockout_time');
delete_option('wallet_up_lc_2fa_trust_duration');
delete_site_option('wallet_up_lc_2fa_trust_duration');
delete_option('wallet_up_lc_email_batch_size');
delete_site_option('wallet_up_lc_email_batch_size');
delete_option('wallet_up_lc_email_interval');
delete_site_option('wallet_up_lc_email_interval');
delete_option('wallet_up_lc_email_rate');
delete_site_option('wallet_up_lc_email_rate');
delete_option('wallet_up_lc_2fa_grace_period');
delete_site_option('wallet_up_lc_2fa_grace_period');
delete_option('wallet_up_lc_db_version');
delete_site_option('wallet_up_lc_db_version');
delete_option('wallet_up_lc_files_installed');
delete_site_option('wallet_up_lc_files_installed');
delete_option('wallet_up_lc_2fa_email_enabled');
delete_site_option('wallet_up_lc_2fa_email_enabled');
delete_option('wallet_up_lc_2fa_reminder_schedule');
delete_site_option('wallet_up_lc_2fa_reminder_schedule');
delete_option('wallet_up_lc_2fa_email_batch_size');
delete_site_option('wallet_up_lc_2fa_email_batch_size');
delete_option('wallet_up_lc_2fa_email_rate');
delete_site_option('wallet_up_lc_2fa_email_rate');
delete_option('wallet_up_lc_network_settings');
delete_site_option('wallet_up_lc_network_settings');
delete_option('wallet_up_lc_network_security');
delete_site_option('wallet_up_lc_network_security');
delete_option('wallet_up_lc_security_notifications');
delete_site_option('wallet_up_lc_security_notifications');
delete_option('wallet_up_lc_security_email');
delete_site_option('wallet_up_lc_security_email');
delete_option('wallet_up_lc_digest_frequency');
delete_site_option('wallet_up_lc_digest_frequency');
delete_option('wallet_up_lc_rate_limit_enabled');
delete_site_option('wallet_up_lc_rate_limit_enabled');
delete_option('wallet_up_lc_rate_limit_attempts');
delete_site_option('wallet_up_lc_rate_limit_attempts');
delete_option('wallet_up_lc_rate_limit_window');
delete_site_option('wallet_up_lc_rate_limit_window');
delete_option('wallet_up_lc_ip_whitelist');
delete_site_option('wallet_up_lc_ip_whitelist');
delete_option('wallet_up_lc_ip_blacklist');
delete_site_option('wallet_up_lc_ip_blacklist');
delete_option('wallet_up_lc_files_last_sync');
delete_site_option('wallet_up_lc_files_last_sync');
delete_option('wallet_up_lc_sync_log');
delete_site_option('wallet_up_lc_sync_log');
delete_option('wallet_up_lc_security_log_level');
delete_site_option('wallet_up_lc_security_log_level');
delete_option('wallet_up_lc_log_retention_days');
delete_site_option('wallet_up_lc_log_retention_days');
delete_option('wallet_up_lc_enable_siem_export');
delete_site_option('wallet_up_lc_enable_siem_export');
delete_option('wallet_up_lc_siem_endpoint');
delete_site_option('wallet_up_lc_siem_endpoint');
delete_option('wallet_up_lc_enable_webhook_alerts');
delete_site_option('wallet_up_lc_enable_webhook_alerts');
delete_option('wallet_up_lc_webhook_url');
delete_site_option('wallet_up_lc_webhook_url');
delete_option('wallet_up_lc_session_timeout');
delete_site_option('wallet_up_lc_session_timeout');

// Delete Transients
delete_transient('wallet_up_lc_config');
delete_site_transient('wallet_up_lc_config');
delete_transient('wallet_up_lc_custom_css');
delete_site_transient('wallet_up_lc_custom_css');
delete_transient('wallet_up_lc_custom_js');
delete_site_transient('wallet_up_lc_custom_js');
delete_transient('wallet_up_lc_security_config');
delete_site_transient('wallet_up_lc_security_config');
delete_transient('wallet_up_lc_security_reinit');
delete_site_transient('wallet_up_lc_security_reinit');
delete_transient('wallet_up_lc_compiled_css');
delete_site_transient('wallet_up_lc_compiled_css');
delete_transient('wallet_up_lc_regenerate_styles');
delete_site_transient('wallet_up_lc_regenerate_styles');
delete_transient('wallet_up_lc_upgraded');
delete_site_transient('wallet_up_lc_upgraded');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wallet_up_lc_user_%', '_site_transient_wallet_up_lc_user_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wallet_up_lc_rate_limit_%', '_site_transient_wallet_up_lc_rate_limit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wallet_up_lc_failed_login_%', '_site_transient_wallet_up_lc_failed_login_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wallet_up_lc_show_setup_wizard');
delete_site_transient('wallet_up_lc_show_setup_wizard');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wallet_up_lc_redirect_%', '_site_transient_wallet_up_lc_redirect_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wallet_up_lc_wallet_up_lc_not_available');
delete_site_transient('wallet_up_lc_wallet_up_lc_not_available');
delete_transient('wallet_up_lc_not_available');
delete_site_transient('wallet_up_lc_not_available');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rate_limit_%', '_site_transient_rate_limit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wallet_up_lc_alert_%', '_site_transient_wallet_up_lc_alert_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wallet_up_lc_redirect_2fa_%', '_site_transient_wallet_up_lc_redirect_2fa_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wallet_up_lc_conflicts');
delete_site_transient('wallet_up_lc_conflicts');
delete_transient('wallet_up_lc_files_auto_updated');
delete_site_transient('wallet_up_lc_files_auto_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('wallet_up_lc_sync_check');
wp_clear_scheduled_hook('wallet_up_lc_send_security_digest');
wp_clear_scheduled_hook('wallet_up_lc_cleanup_expired_blocks');
wp_clear_scheduled_hook('wallet_up_lc_cleanup_rate_limits');
wp_clear_scheduled_hook('wallet_up_lc_cleanup_security_logs');
wp_clear_scheduled_hook('wallet_up_lc_process_security_alerts');
wp_clear_scheduled_hook('wallet_up_lc_process_email_queue');
wp_clear_scheduled_hook('wallet_up_lc_check_2fa_enforcement');
wp_clear_scheduled_hook('wallet_up_lc_retry_failed_emails');
wp_clear_scheduled_hook('wallet_up_lc_cleanup_email_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_pending_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_pending_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_pending_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_pending_redirect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_setup_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_logins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_logins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_logins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_grace_logins' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforcement_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforcement_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforcement_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforcement_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_temp_secret_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_enforced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_last_2fa_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_last_2fa_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_last_2fa_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_last_2fa_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_success_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_success_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_success_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_success_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_2fa_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_last_login_reminder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_last_login_reminder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_last_login_reminder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_last_login_reminder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wallet_up_lc_dismissed_language_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wallet_up_lc_dismissed_language_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wallet_up_lc_dismissed_language_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wallet_up_lc_dismissed_language_notices' ) );

