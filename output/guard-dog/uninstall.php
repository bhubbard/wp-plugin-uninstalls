<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guard_dog_captcha_use_enterprise');
delete_site_option('guard_dog_captcha_use_enterprise');
delete_option('guard_dog_debug_enabled');
delete_site_option('guard_dog_debug_enabled');
delete_option('guard_dog_debug_level');
delete_site_option('guard_dog_debug_level');
delete_option('guard_dog_sessions_enabled');
delete_site_option('guard_dog_sessions_enabled');
delete_option('guard_dog_sessions_max_per_user');
delete_site_option('guard_dog_sessions_max_per_user');
delete_option('guard_dog_sessions_timeout_minutes');
delete_site_option('guard_dog_sessions_timeout_minutes');
delete_option('guard_dog_sessions_detect_ip_shift');
delete_site_option('guard_dog_sessions_detect_ip_shift');
delete_option('guard_dog_sessions_detect_geo_anomaly');
delete_site_option('guard_dog_sessions_detect_geo_anomaly');
delete_option('guard_dog_sessions_notify_user');
delete_site_option('guard_dog_sessions_notify_user');
delete_option('guard_dog_ip_reputation_login_enabled');
delete_site_option('guard_dog_ip_reputation_login_enabled');
delete_option('guard_dog_ip_reputation_login_threshold');
delete_site_option('guard_dog_ip_reputation_login_threshold');
delete_option('guard_dog_ip_reputation_session_enabled');
delete_site_option('guard_dog_ip_reputation_session_enabled');
delete_option('guard_dog_ip_reputation_session_threshold');
delete_site_option('guard_dog_ip_reputation_session_threshold');
delete_option('guard_dog_ipinfo_token');
delete_site_option('guard_dog_ipinfo_token');
delete_option('guard_dog_ip_reputation_disable_geo');
delete_site_option('guard_dog_ip_reputation_disable_geo');
delete_option('guard_dog_ip_detection_method');
delete_site_option('guard_dog_ip_detection_method');
delete_option('guard_dog_trusted_proxy_ips');
delete_site_option('guard_dog_trusted_proxy_ips');
delete_option('guard_dog_site_wide_blocking');
delete_site_option('guard_dog_site_wide_blocking');
delete_option('guard_dog_ip_blacklist');
delete_site_option('guard_dog_ip_blacklist');
delete_option('guard_dog_ip_whitelist');
delete_site_option('guard_dog_ip_whitelist');
delete_option('guard_dog_user_blacklist');
delete_site_option('guard_dog_user_blacklist');
delete_option('guard_dog_user_whitelist');
delete_site_option('guard_dog_user_whitelist');
delete_option('guard_dog_country_blacklist');
delete_site_option('guard_dog_country_blacklist');
delete_option('guard_dog_log_retention_days');
delete_site_option('guard_dog_log_retention_days');
delete_option('guard_dog_max_log_entries');
delete_site_option('guard_dog_max_log_entries');
delete_option('guard_dog_log_ip_addresses');
delete_site_option('guard_dog_log_ip_addresses');
delete_option('guard_dog_log_user_agents');
delete_site_option('guard_dog_log_user_agents');
delete_option('guard_dog_activity_log_settings');
delete_site_option('guard_dog_activity_log_settings');
delete_option('guard_dog_captcha_provider');
delete_site_option('guard_dog_captcha_provider');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_site_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('guard_dog_recaptcha_v2_theme');
delete_site_option('guard_dog_recaptcha_v2_theme');
delete_option('guard_dog_recaptcha_v2_size');
delete_site_option('guard_dog_recaptcha_v2_size');
delete_option('guard_dog_recaptcha_v3_threshold');
delete_site_option('guard_dog_recaptcha_v3_threshold');
delete_option('guard_dog_login_slug');
delete_site_option('guard_dog_login_slug');
delete_option('guard_dog_lla_enabled');
delete_site_option('guard_dog_lla_enabled');
delete_option('guard_dog_lla_max_retries');
delete_site_option('guard_dog_lla_max_retries');
delete_option('guard_dog_lla_lockout_duration');
delete_site_option('guard_dog_lla_lockout_duration');
delete_option('guard_dog_two_factor_enabled');
delete_site_option('guard_dog_two_factor_enabled');
delete_option('guard_dog_two_factor_enforced');
delete_site_option('guard_dog_two_factor_enforced');
delete_option('guard_dog_two_factor_grace_period');
delete_site_option('guard_dog_two_factor_grace_period');
delete_option('guard_dog_two_factor_enforcement_date');
delete_site_option('guard_dog_two_factor_enforcement_date');
delete_option('guard_dog_email_2fa_enabled');
delete_site_option('guard_dog_email_2fa_enabled');
delete_option('guard_dog_passkeys_enabled');
delete_site_option('guard_dog_passkeys_enabled');
delete_option('guard_dog_passkeys_bypass_2fa');
delete_site_option('guard_dog_passkeys_bypass_2fa');
delete_option('guard_dog_passkeys_require_user_verification');
delete_site_option('guard_dog_passkeys_require_user_verification');
delete_option('guard_dog_email_provider_settings');
delete_site_option('guard_dog_email_provider_settings');
delete_option('guard_dog_email_provider');
delete_site_option('guard_dog_email_provider');
delete_option('guard_dog_enum_enabled');
delete_site_option('guard_dog_enum_enabled');
delete_option('guard_dog_enum_bypass_roles');
delete_site_option('guard_dog_enum_bypass_roles');
delete_option('guard_dog_enum_auto_block_enabled');
delete_site_option('guard_dog_enum_auto_block_enabled');
delete_option('guard_dog_enum_auto_block_threshold');
delete_site_option('guard_dog_enum_auto_block_threshold');
delete_option('guard_dog_enum_auto_block_window');
delete_site_option('guard_dog_enum_auto_block_window');
delete_option('guard_dog_enum_auto_block_duration');
delete_site_option('guard_dog_enum_auto_block_duration');
delete_option('guard_dog_enum_alert_immediate_enabled');
delete_site_option('guard_dog_enum_alert_immediate_enabled');
delete_option('guard_dog_enum_alert_immediate_threshold');
delete_site_option('guard_dog_enum_alert_immediate_threshold');
delete_option('guard_dog_enum_alert_immediate_window');
delete_site_option('guard_dog_enum_alert_immediate_window');
delete_option('guard_dog_enum_alert_immediate_email');
delete_site_option('guard_dog_enum_alert_immediate_email');
delete_option('guard_dog_enum_alert_immediate_cooldown');
delete_site_option('guard_dog_enum_alert_immediate_cooldown');
delete_option('guard_dog_enum_alert_digest_enabled');
delete_site_option('guard_dog_enum_alert_digest_enabled');
delete_option('guard_dog_enum_alert_digest_frequency');
delete_site_option('guard_dog_enum_alert_digest_frequency');
delete_option('guard_dog_enum_alert_digest_threshold');
delete_site_option('guard_dog_enum_alert_digest_threshold');
delete_option('guard_dog_enum_alert_digest_email');
delete_site_option('guard_dog_enum_alert_digest_email');
delete_option('guard_dog_social_login_enabled');
delete_site_option('guard_dog_social_login_enabled');
delete_option('guard_dog_social_google_enabled');
delete_site_option('guard_dog_social_google_enabled');
delete_option('guard_dog_social_google_client_id');
delete_site_option('guard_dog_social_google_client_id');
delete_option('guard_dog_social_google_client_secret');
delete_site_option('guard_dog_social_google_client_secret');
delete_option('guard_dog_social_microsoft_enabled');
delete_site_option('guard_dog_social_microsoft_enabled');
delete_option('guard_dog_social_microsoft_client_id');
delete_site_option('guard_dog_social_microsoft_client_id');
delete_option('guard_dog_social_microsoft_client_secret');
delete_site_option('guard_dog_social_microsoft_client_secret');
delete_option('guard_dog_social_apple_enabled');
delete_site_option('guard_dog_social_apple_enabled');
delete_option('guard_dog_social_apple_client_id');
delete_site_option('guard_dog_social_apple_client_id');
delete_option('guard_dog_social_apple_team_id');
delete_site_option('guard_dog_social_apple_team_id');
delete_option('guard_dog_social_apple_key_id');
delete_site_option('guard_dog_social_apple_key_id');
delete_option('guard_dog_social_apple_key_file');
delete_site_option('guard_dog_social_apple_key_file');
delete_option('guard_dog_social_auto_link_email');
delete_site_option('guard_dog_social_auto_link_email');
delete_option('guard_dog_social_auto_create_users');
delete_site_option('guard_dog_social_auto_create_users');
delete_option('guard_dog_social_new_user_role');
delete_site_option('guard_dog_social_new_user_role');
delete_option('guard_dog_social_bypass_2fa');
delete_site_option('guard_dog_social_bypass_2fa');
delete_option('guard_dog_enum_rest_api_block');
delete_site_option('guard_dog_enum_rest_api_block');
delete_option('guard_dog_enum_author_archives_block');
delete_site_option('guard_dog_enum_author_archives_block');
delete_option('guard_dog_enum_login_errors_block');
delete_site_option('guard_dog_enum_login_errors_block');
delete_option('guard_dog_enum_password_reset_block');
delete_site_option('guard_dog_enum_password_reset_block');
delete_option('guard_dog_enum_xmlrpc_block');
delete_site_option('guard_dog_enum_xmlrpc_block');
delete_option('guard_dog_enum_oembed_block');
delete_site_option('guard_dog_enum_oembed_block');
delete_option('guard_dog_enum_registration_block');
delete_site_option('guard_dog_enum_registration_block');
delete_option('guard_dog_email_provider_global_override');
delete_site_option('guard_dog_email_provider_global_override');
delete_option('guard_dog_login_attempts_enabled');
delete_site_option('guard_dog_login_attempts_enabled');
delete_option('guard_dog_temp_access_default_role');
delete_site_option('guard_dog_temp_access_default_role');
delete_option('guard_dog_temp_access_default_expiry');
delete_site_option('guard_dog_temp_access_default_expiry');
delete_option('guard_dog_temp_access_max_logins');
delete_site_option('guard_dog_temp_access_max_logins');
delete_option('guard_dog_password_min_length');
delete_site_option('guard_dog_password_min_length');
delete_option('guard_dog_password_require_uppercase');
delete_site_option('guard_dog_password_require_uppercase');
delete_option('guard_dog_password_require_lowercase');
delete_site_option('guard_dog_password_require_lowercase');
delete_option('guard_dog_password_require_numbers');
delete_site_option('guard_dog_password_require_numbers');
delete_option('guard_dog_password_require_special');
delete_site_option('guard_dog_password_require_special');
delete_option('guard_dog_password_block_common');
delete_site_option('guard_dog_password_block_common');
delete_option('guard_dog_password_block_username');
delete_site_option('guard_dog_password_block_username');
delete_option('guard_dog_password_block_email');
delete_site_option('guard_dog_password_block_email');
delete_option('guard_dog_password_reuse_limit');
delete_site_option('guard_dog_password_reuse_limit');
delete_option('guard_dog_password_policy_exempt_roles');
delete_site_option('guard_dog_password_policy_exempt_roles');
delete_option('guard_dog_password_expiration_enabled');
delete_site_option('guard_dog_password_expiration_enabled');
delete_option('guard_dog_password_expiration_days');
delete_site_option('guard_dog_password_expiration_days');
delete_option('guard_dog_password_expiration_warning_days');
delete_site_option('guard_dog_password_expiration_warning_days');
delete_option('guard_dog_password_expiration_email_enabled');
delete_site_option('guard_dog_password_expiration_email_enabled');
delete_option('guard_dog_password_expiration_exempt_roles');
delete_site_option('guard_dog_password_expiration_exempt_roles');
delete_option('guard_dog_logged_event_types');
delete_site_option('guard_dog_logged_event_types');
delete_option('guard_dog_temp_access_tokens');
delete_site_option('guard_dog_temp_access_tokens');
delete_option('guard_dog_generic_login_error');
delete_site_option('guard_dog_generic_login_error');
delete_option('guard_dog_access_mode');
delete_site_option('guard_dog_access_mode');
delete_option('guard_dog_access_denied_message');
delete_site_option('guard_dog_access_denied_message');
delete_option('guard_dog_wp_version_before_update');
delete_site_option('guard_dog_wp_version_before_update');
delete_option('guard_dog_captcha_error_message');
delete_site_option('guard_dog_captcha_error_message');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_last_email_test_%', '_site_transient_guard_dog_last_email_test_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('guard_dog_health_report');
delete_site_transient('guard_dog_health_report');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_password_reset_pending_%', '_site_transient_guard_dog_password_reset_pending_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_password_reset_success_%', '_site_transient_guard_dog_password_reset_success_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__guard_dog_show_recovery_codes_%', '_site_transient__guard_dog_show_recovery_codes_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_2fa_grace_warning_%', '_site_transient_guard_dog_2fa_grace_warning_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_2fa_config_error_%', '_site_transient_guard_dog_2fa_config_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_show_recovery_codes_%', '_site_transient_guard_dog_show_recovery_codes_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_guard_dog_login_state_%', '_site_transient_guard_dog_login_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('guard_dog_cleanup_expired_blacklist');
wp_clear_scheduled_hook('guard_dog_cleanup_sessions');
wp_clear_scheduled_hook('guard_dog_enum_digest_email');
wp_clear_scheduled_hook('guard_dog_cleanup_activity_logs');
wp_clear_scheduled_hook('guard_dog_check_password_expirations');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'guard_dog_social_avatar_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'guard_dog_social_avatar_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'guard_dog_social_avatar_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'guard_dog_social_avatar_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_guard_dog_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_guard_dog_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_guard_dog_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_guard_dog_2fa_temp_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_guard_dog_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_guard_dog_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_guard_dog_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_guard_dog_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_guard_dog_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_guard_dog_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_guard_dog_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_guard_dog_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_guard_dog_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_guard_dog_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_guard_dog_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_guard_dog_2fa_backup_codes' ) );

