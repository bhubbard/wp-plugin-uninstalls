<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faqnurul_ipcbl_activity_logs');
delete_site_option('faqnurul_ipcbl_activity_logs');
delete_option('faqnurul_ipcbl_ip_whitelist');
delete_site_option('faqnurul_ipcbl_ip_whitelist');
delete_option('faqnurul_ipcbl_cloudflare_secret_key');
delete_site_option('faqnurul_ipcbl_cloudflare_secret_key');
delete_option('faqnurul_ipcbl_cloudflare_enabled');
delete_site_option('faqnurul_ipcbl_cloudflare_enabled');
delete_option('faqnurul_ipcbl_turnstile_login');
delete_site_option('faqnurul_ipcbl_turnstile_login');
delete_option('faqnurul_ipcbl_cloudflare_site_key');
delete_site_option('faqnurul_ipcbl_cloudflare_site_key');
delete_option('faqnurul_ipcbl_captcha_enabled');
delete_site_option('faqnurul_ipcbl_captcha_enabled');
delete_option('faqnurul_ipcbl_turnstile_register');
delete_site_option('faqnurul_ipcbl_turnstile_register');
delete_option('faqnurul_ipcbl_turnstile_comments');
delete_site_option('faqnurul_ipcbl_turnstile_comments');
delete_option('faqnurul_ipcbl_turnstile_lost_password');
delete_site_option('faqnurul_ipcbl_turnstile_lost_password');
delete_option('faqnurul_ipcbl_turnstile_woocommerce');
delete_site_option('faqnurul_ipcbl_turnstile_woocommerce');
delete_option('faqnurul_ipcbl_captcha_secret_key');
delete_site_option('faqnurul_ipcbl_captcha_secret_key');
delete_option('faqnurul_ipcbl_captcha_version');
delete_site_option('faqnurul_ipcbl_captcha_version');
delete_option('faqnurul_ipcbl_captcha_login');
delete_site_option('faqnurul_ipcbl_captcha_login');
delete_option('faqnurul_ipcbl_captcha_site_key');
delete_site_option('faqnurul_ipcbl_captcha_site_key');
delete_option('faqnurul_ipcbl_captcha_register');
delete_site_option('faqnurul_ipcbl_captcha_register');
delete_option('faqnurul_ipcbl_captcha_comments');
delete_site_option('faqnurul_ipcbl_captcha_comments');
delete_option('faqnurul_ipcbl_captcha_lost_password');
delete_site_option('faqnurul_ipcbl_captcha_lost_password');
delete_option('faqnurul_ipcbl_captcha_woocommerce');
delete_site_option('faqnurul_ipcbl_captcha_woocommerce');
delete_option('faqnurul_ipcbl_admin_lockout_enabled');
delete_site_option('faqnurul_ipcbl_admin_lockout_enabled');
delete_option('faqnurul_ipcbl_lockout_max_attempts');
delete_site_option('faqnurul_ipcbl_lockout_max_attempts');
delete_option('faqnurul_ipcbl_lockout_duration');
delete_site_option('faqnurul_ipcbl_lockout_duration');
delete_option('faqnurul_ipcbl_2fa_enabled');
delete_site_option('faqnurul_ipcbl_2fa_enabled');
delete_option('faqnurul_ipcbl_ip_blocked_list');
delete_site_option('faqnurul_ipcbl_ip_blocked_list');
delete_option('faqnurul_ipcbl_country_blocked_list');
delete_site_option('faqnurul_ipcbl_country_blocked_list');
delete_option('faqnurul_ipcbl_custom_error_text');
delete_site_option('faqnurul_ipcbl_custom_error_text');
delete_option('faqnurul_ipcbl_2fa_method');
delete_site_option('faqnurul_ipcbl_2fa_method');
delete_option('faqnurul_ipcbl_2fa_email');
delete_site_option('faqnurul_ipcbl_2fa_email');
delete_option('faqnurul_ipcbl_show_optin_notice');
delete_site_option('faqnurul_ipcbl_show_optin_notice');
delete_option('faqnurul_ipcbl_blocked_page_template');
delete_site_option('faqnurul_ipcbl_blocked_page_template');
delete_option('faqnurul_ipcbl_data_collection_optin');
delete_site_option('faqnurul_ipcbl_data_collection_optin');
delete_option('faqnurul_ipcbl_last_decline_time');
delete_site_option('faqnurul_ipcbl_last_decline_time');
delete_option('faqnurul_ipcbl_last_active_track');
delete_site_option('faqnurul_ipcbl_last_active_track');
delete_option('faqnurul_ipcbl_installation_id');
delete_site_option('faqnurul_ipcbl_installation_id');
delete_option('ipcbl_recaptcha_settings');
delete_site_option('ipcbl_recaptcha_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_faqnurul_2fa_email_code_%', '_site_transient_faqnurul_2fa_email_code_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_faqnurul_2fa_%', '_site_transient_faqnurul_2fa_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('faqnurul_ipcbl_recovery_hash');
delete_site_transient('faqnurul_ipcbl_recovery_hash');
delete_transient('faqnurul_ipcbl_activation_redirect');
delete_site_transient('faqnurul_ipcbl_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verified' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verification_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verification_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verification_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_verification_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_recovery_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'faqnurul_ipcbl_2fa_email' ) );

