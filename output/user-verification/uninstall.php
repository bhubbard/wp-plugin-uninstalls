<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user_verification_settings');
delete_site_option('user_verification_settings');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('user_verification_notices');
delete_site_option('user_verification_notices');
delete_option('user_verification_stats_count');
delete_site_option('user_verification_stats_count');
delete_option('user_verification_verification_page');
delete_site_option('user_verification_verification_page');
delete_option('user_verification_redirect_verified');
delete_site_option('user_verification_redirect_verified');
delete_option('user_verification_login_automatically');
delete_site_option('user_verification_login_automatically');
delete_option('uv_exclude_user_roles');
delete_site_option('uv_exclude_user_roles');
delete_option('uv_wc_disable_auto_login');
delete_site_option('uv_wc_disable_auto_login');
delete_option('uv_wc_message_after_registration');
delete_site_option('uv_wc_message_after_registration');
delete_option('uv_wc_redirect_after_payment');
delete_site_option('uv_wc_redirect_after_payment');
delete_option('uv_um_disable_auto_login');
delete_site_option('uv_um_disable_auto_login');
delete_option('uv_um_message_before_header');
delete_site_option('uv_um_message_before_header');
delete_option('uv_pmpro_disable_auto_login');
delete_site_option('uv_pmpro_disable_auto_login');
delete_option('uv_pmpro_message_checkout_page');
delete_site_option('uv_pmpro_message_checkout_page');
delete_option('uv_pmpro_redirect_timout');
delete_site_option('uv_pmpro_redirect_timout');
delete_option('uv_pmpro_redirect_after_checkout_page_id');
delete_site_option('uv_pmpro_redirect_after_checkout_page_id');
delete_option('user_verification_enable_block_domain');
delete_site_option('user_verification_enable_block_domain');
delete_option('uv_settings_blocked_domain');
delete_site_option('uv_settings_blocked_domain');
delete_option('uv_settings_allowed_domain');
delete_site_option('uv_settings_allowed_domain');
delete_option('user_verification_enable_block_username');
delete_site_option('user_verification_enable_block_username');
delete_option('uv_settings_blocked_username');
delete_site_option('uv_settings_blocked_username');
delete_option('uv_message_invalid_key');
delete_site_option('uv_message_invalid_key');
delete_option('uv_message_activation_sent');
delete_site_option('uv_message_activation_sent');
delete_option('uv_message_verify_email');
delete_site_option('uv_message_verify_email');
delete_option('user_verification_registered_message');
delete_site_option('user_verification_registered_message');
delete_option('uv_message_verification_success');
delete_site_option('uv_message_verification_success');
delete_option('uv_message_captcha_error');
delete_site_option('uv_message_captcha_error');
delete_option('uv_recaptcha_sitekey');
delete_site_option('uv_recaptcha_sitekey');
delete_option('uv_recaptcha_login_page');
delete_site_option('uv_recaptcha_login_page');
delete_option('uv_recaptcha_register_page');
delete_site_option('uv_recaptcha_register_page');
delete_option('uv_recaptcha_lostpassword_page');
delete_site_option('uv_recaptcha_lostpassword_page');
delete_option('uv_recaptcha_comment_form');
delete_site_option('uv_recaptcha_comment_form');
delete_option('uv_recaptcha_wc_login_form');
delete_site_option('uv_recaptcha_wc_login_form');
delete_option('uv_recaptcha_wc_register_form');
delete_site_option('uv_recaptcha_wc_register_form');
delete_option('uv_recaptcha_wc_lostpassword_form');
delete_site_option('uv_recaptcha_wc_lostpassword_form');
delete_option('uv_email_templates_data');
delete_site_option('uv_email_templates_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_login_attempts_%', '_site_transient_login_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_uv_otp_count_%', '_site_transient_uv_otp_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_activation_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'uv_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'uv_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'uv_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'uv_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'magic_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'magic_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'magic_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'magic_login_key' ) );

