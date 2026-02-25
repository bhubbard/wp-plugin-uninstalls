<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lap_invalid_username');
delete_site_option('lap_invalid_username');
delete_option('lap_invalid_email');
delete_site_option('lap_invalid_email');
delete_option('lap_invalid_password');
delete_site_option('lap_invalid_password');
delete_option('forgot_password_link_mail_subject');
delete_site_option('forgot_password_link_mail_subject');
delete_option('forgot_password_link_mail_body');
delete_site_option('forgot_password_link_mail_body');
delete_option('new_password_mail_subject');
delete_site_option('new_password_mail_subject');
delete_option('new_password_mail_body');
delete_site_option('new_password_mail_body');
delete_option('login_ap_rem');
delete_site_option('login_ap_rem');
delete_option('login_ap_forgot_pass_link');
delete_site_option('login_ap_forgot_pass_link');
delete_option('login_ap_forgot_pass_page_url');
delete_site_option('login_ap_forgot_pass_page_url');
delete_option('login_ap_register_link');
delete_site_option('login_ap_register_link');
delete_option('login_ap_register_page_url');
delete_site_option('login_ap_register_page_url');
delete_option('redirect_page');
delete_site_option('redirect_page');
delete_option('redirect_page_url');
delete_site_option('redirect_page_url');
delete_option('nonce_check_on_login');
delete_site_option('nonce_check_on_login');
delete_option('logout_redirect_page');
delete_site_option('logout_redirect_page');
delete_option('link_in_username');
delete_site_option('link_in_username');
delete_option('custom_style_ap');
delete_site_option('custom_style_ap');
delete_option('captcha_on_admin_login');
delete_site_option('captcha_on_admin_login');
delete_option('captcha_on_user_login');
delete_site_option('captcha_on_user_login');
delete_option('lsw_google_recaptcha_public_key');
delete_site_option('lsw_google_recaptcha_public_key');
delete_option('lsw_google_recaptcha_private_key');
delete_site_option('lsw_google_recaptcha_private_key');
delete_option('captcha_type_in_lsw');
delete_site_option('captcha_type_in_lsw');
delete_option('login_sidebar_widget_from_email');
delete_site_option('login_sidebar_widget_from_email');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aiowps_captcha_string_info_%', '_site_transient_aiowps_captcha_string_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

