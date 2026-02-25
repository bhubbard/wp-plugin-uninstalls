<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitelock_2fa_settings');
delete_site_option('sitelock_2fa_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sitelock_2fa_grace_period');
delete_site_option('sitelock_2fa_grace_period');
delete_option('wpslp_options');
delete_site_option('wpslp_options');
delete_option('sitelock_account_sites');
delete_site_option('sitelock_account_sites');
delete_option('sitelock_account_scaninfo');
delete_site_option('sitelock_account_scaninfo');
delete_option('sitelock_malware_get_scan');
delete_site_option('sitelock_malware_get_scan');
delete_option('sitelock_word_quick');
delete_site_option('sitelock_word_quick');
delete_option('sitelock_license_key');
delete_site_option('sitelock_license_key');
delete_option('sitelock_login_logger_roles');
delete_site_option('sitelock_login_logger_roles');
delete_option('sitelock_login_logger_retention');
delete_site_option('sitelock_login_logger_retention');
delete_option('sitelock_password_strength_enabled');
delete_site_option('sitelock_password_strength_enabled');
delete_option('sitelock_password_strength_user_roles');
delete_site_option('sitelock_password_strength_user_roles');
delete_option('sitelock_force_logout_enabled');
delete_site_option('sitelock_force_logout_enabled');
delete_option('sitelock_force_logout_duration');
delete_site_option('sitelock_force_logout_duration');
delete_option('sitelock_force_logout_excluded_roles');
delete_site_option('sitelock_force_logout_excluded_roles');
delete_option('sitelock_badge_location');
delete_site_option('sitelock_badge_location');
delete_option('sitelock_badge_color');
delete_site_option('sitelock_badge_color');
delete_option('sitelock_badge_size');
delete_site_option('sitelock_badge_size');
delete_option('sitelock_badge_type');
delete_site_option('sitelock_badge_type');
delete_option('sitelock_site_id');
delete_site_option('sitelock_site_id');
delete_option('sitelock_badge_link');
delete_site_option('sitelock_badge_link');
delete_option('sitelock_badge_img');
delete_site_option('sitelock_badge_img');
delete_option('sitelock_security_settings');
delete_site_option('sitelock_security_settings');
delete_option('sitelock_login_lockout_enabled');
delete_site_option('sitelock_login_lockout_enabled');
delete_option('sitelock_login_lockout_max_attempts');
delete_site_option('sitelock_login_lockout_max_attempts');
delete_option('sitelock_login_lockout_duration');
delete_site_option('sitelock_login_lockout_duration');
delete_option('sitelock_login_lockout_reset_time');
delete_site_option('sitelock_login_lockout_reset_time');
delete_option('sitelock_blocked_directories');
delete_site_option('sitelock_blocked_directories');
delete_option('sitelock_meta_tag');
delete_site_option('sitelock_meta_tag');
delete_option('sitelock_refresh_api');
delete_site_option('sitelock_refresh_api');
delete_option('sitelock_secret');
delete_site_option('sitelock_secret');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sitelock_2fa_setup_notice_%', '_site_transient_sitelock_2fa_setup_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sitelock_2fa_verified_%', '_site_transient_sitelock_2fa_verified_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('sitelock_auth_error');
delete_site_transient('sitelock_auth_error');
delete_transient('sitelock_permission_error');
delete_site_transient('sitelock_permission_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sitelock_pending_2fa_%', '_site_transient_sitelock_pending_2fa_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('sitelock_auth_success');
delete_site_transient('sitelock_auth_success');
delete_transient('slwp-plugin-activation-notice');
delete_site_transient('slwp-plugin-activation-notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sitelock_admin_notice_%', '_site_transient_sitelock_admin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('sitelock_check_admins_cron');
wp_clear_scheduled_hook('sitelock_login_log_cleanup_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_2fa_failed_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_2fa_failed_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_2fa_failed_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_2fa_failed_attempts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'page_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'page_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'page_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'page_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_dismissed_admin_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_dismissed_admin_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_dismissed_admin_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_dismissed_admin_warning' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sitelock_force_logout_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sitelock_force_logout_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sitelock_force_logout_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sitelock_force_logout_time' ) );

