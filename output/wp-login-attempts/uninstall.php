<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('g_reCaptcha_version');
delete_site_option('g_reCaptcha_version');
delete_option('g_reCaptcha_site_key');
delete_site_option('g_reCaptcha_site_key');
delete_option('g_reCaptcha_site_key_v3');
delete_site_option('g_reCaptcha_site_key_v3');
delete_option('g_reCaptcha_secret_key');
delete_site_option('g_reCaptcha_secret_key');
delete_option('g_reCaptcha_secret_key_v3');
delete_site_option('g_reCaptcha_secret_key_v3');
delete_option('wla_disable_login_attmpt');
delete_site_option('wla_disable_login_attmpt');
delete_option('g_reCaptcha_enable');
delete_site_option('g_reCaptcha_enable');
delete_option('wla_lim_login_handle_log_key');
delete_site_option('wla_lim_login_handle_log_key');
delete_option('wla_lim_logo_url');
delete_site_option('wla_lim_logo_url');
delete_option('wla_lim_logo_file');
delete_site_option('wla_lim_logo_file');
delete_option('wla_lim_login_background_img');
delete_site_option('wla_lim_login_background_img');
delete_option('wla_lim_login_background_color');
delete_site_option('wla_lim_login_background_color');
delete_option('wla_lim_lost_ur_pwd');
delete_site_option('wla_lim_lost_ur_pwd');
delete_option('wla_lim_hide_login_page');
delete_site_option('wla_lim_hide_login_page');
delete_option('wla_lim_redirect_login_wpadmin');
delete_site_option('wla_lim_redirect_login_wpadmin');
delete_option('wla_lim_lockouts_cal');
delete_site_option('wla_lim_lockouts_cal');
delete_option('wla_lim_login_retries');
delete_site_option('wla_lim_login_retries');
delete_option('wla_lim_login_retries_valid');
delete_site_option('wla_lim_login_retries_valid');
delete_option('wla_lim_lockoutstotal');
delete_site_option('wla_lim_lockoutstotal');
delete_option('site_name');
delete_site_option('site_name');
delete_option('wla_lim_login_clienttype_key');
delete_site_option('wla_lim_login_clienttype_key');
delete_option('wla_lim_login_allowed_retries_key');
delete_site_option('wla_lim_login_allowed_retries_key');
delete_option('wla_lim_login_lockout_duration_key');
delete_site_option('wla_lim_login_lockout_duration_key');
delete_option('wla_lim_login_allowed_lockouts_key');
delete_site_option('wla_lim_login_allowed_lockouts_key');
delete_option('wla_lim_login_long_duration_key');
delete_site_option('wla_lim_login_long_duration_key');
delete_option('wla_lim_login_valid_duration_key');
delete_site_option('wla_lim_login_valid_duration_key');
delete_option('wla_lim_login_lockout_notify_key');
delete_site_option('wla_lim_login_lockout_notify_key');
delete_option('wla_lim_login_notify_email_after_key');
delete_site_option('wla_lim_login_notify_email_after_key');
delete_option('wla_lim_login_cookies_key');
delete_site_option('wla_lim_login_cookies_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wla_lim_prev_cookie' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wla_lim_prev_cookie' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wla_lim_prev_cookie' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wla_lim_prev_cookie' ) );

