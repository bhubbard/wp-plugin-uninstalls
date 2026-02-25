<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ejabat_captcha_type');
delete_site_option('ejabat_captcha_type');
delete_option('ejabat_recaptcha_version');
delete_site_option('ejabat_recaptcha_version');
delete_option('ejabat_recaptcha_site_key');
delete_site_option('ejabat_recaptcha_site_key');
delete_option('ejabat_recaptcha_secret_key');
delete_site_option('ejabat_recaptcha_secret_key');
delete_option('ejabat_recaptcha_theme');
delete_site_option('ejabat_recaptcha_theme');
delete_option('ejabat_recaptcha_v2_size');
delete_site_option('ejabat_recaptcha_v2_size');
delete_option('ejabat_recaptcha_v2_badge');
delete_site_option('ejabat_recaptcha_v2_badge');
delete_option('ejabat_recaptcha_v3_threshold');
delete_site_option('ejabat_recaptcha_v3_threshold');
delete_option('ejabat_phpcaptcha_length');
delete_site_option('ejabat_phpcaptcha_length');
delete_option('ejabat_phpcaptcha_width');
delete_site_option('ejabat_phpcaptcha_width');
delete_option('ejabat_phpcaptcha_height');
delete_site_option('ejabat_phpcaptcha_height');
delete_option('ejabat_phpcaptcha_quality');
delete_site_option('ejabat_phpcaptcha_quality');
delete_option('ejabat_phpcaptcha_position');
delete_site_option('ejabat_phpcaptcha_position');
delete_option('ejabat_captcha_loggedin_hide');
delete_site_option('ejabat_captcha_loggedin_hide');
delete_option('ejabat_show_hints');
delete_site_option('ejabat_show_hints');
delete_option('ejabat_username_hint');
delete_site_option('ejabat_username_hint');
delete_option('ejabat_password_hint');
delete_site_option('ejabat_password_hint');
delete_option('ejabat_email_hint');
delete_site_option('ejabat_email_hint');
delete_option('ejabat_password_strength');
delete_site_option('ejabat_password_strength');
delete_option('ejabat_validator_pizza');
delete_site_option('ejabat_validator_pizza');
delete_option('ejabat_loader');
delete_site_option('ejabat_loader');
delete_option('ejabat_rest_url');
delete_site_option('ejabat_rest_url');
delete_option('ejabat_login');
delete_site_option('ejabat_login');
delete_option('ejabat_password');
delete_site_option('ejabat_password');
delete_option('ejabat_oauth_token');
delete_site_option('ejabat_oauth_token');
delete_option('ejabat_debug');
delete_site_option('ejabat_debug');
delete_option('ejabat_registration_hosts');
delete_site_option('ejabat_registration_hosts');
delete_option('ejabat_allowed_username_regexp');
delete_site_option('ejabat_allowed_username_regexp');
delete_option('ejabat_blocked_username_regexp');
delete_site_option('ejabat_blocked_username_regexp');
delete_option('ejabat_welcome_msg');
delete_site_option('ejabat_welcome_msg');
delete_option('ejabat_welcome_msg_subject');
delete_site_option('ejabat_welcome_msg_subject');
delete_option('ejabat_welcome_msg_body');
delete_site_option('ejabat_welcome_msg_body');
delete_option('ejabat_watcher');
delete_site_option('ejabat_watcher');
delete_option('ejabat_watch_registration');
delete_site_option('ejabat_watch_registration');
delete_option('ejabat_watch_activation');
delete_site_option('ejabat_watch_activation');
delete_option('ejabat_registration_timeout');
delete_site_option('ejabat_registration_timeout');
delete_option('ejabat_two_step_registration');
delete_site_option('ejabat_two_step_registration');
delete_option('ejabat_activation_timeout');
delete_site_option('ejabat_activation_timeout');
delete_option('ejabat_disable_registration');
delete_site_option('ejabat_disable_registration');
delete_option('ejabat_change_email_timeout');
delete_site_option('ejabat_change_email_timeout');
delete_option('ejabat_watch_email_changes');
delete_site_option('ejabat_watch_email_changes');
delete_option('ejabat_disable_change_email');
delete_site_option('ejabat_disable_change_email');
delete_option('ejabat_reset_pass_timeout');
delete_site_option('ejabat_reset_pass_timeout');
delete_option('ejabat_reset_pass_limit_count');
delete_site_option('ejabat_reset_pass_limit_count');
delete_option('ejabat_reset_pass_limit_timeout');
delete_site_option('ejabat_reset_pass_limit_timeout');
delete_option('ejabat_watch_reset_pass');
delete_site_option('ejabat_watch_reset_pass');
delete_option('ejabat_disable_reset_pass');
delete_site_option('ejabat_disable_reset_pass');
delete_option('ejabat_delete_account_timeout');
delete_site_option('ejabat_delete_account_timeout');
delete_option('ejabat_watch_delete_account');
delete_site_option('ejabat_watch_delete_account');
delete_option('ejabat_disable_delete_account');
delete_site_option('ejabat_disable_delete_account');
delete_option('ejabat_webpresence_url');
delete_site_option('ejabat_webpresence_url');
delete_option('ejabat_disable_webpresence');
delete_site_option('ejabat_disable_webpresence');
delete_option('ejabat_hostname');
delete_site_option('ejabat_hostname');
delete_option('ejabat_login_hint');
delete_site_option('ejabat_login_hint');
delete_option('ejabat_rest_timeout');
delete_site_option('ejabat_rest_timeout');
delete_option('ejabat_rest_retry');
delete_site_option('ejabat_rest_retry');
delete_option('ejabat_allowed_login_regexp');
delete_site_option('ejabat_allowed_login_regexp');
delete_option('ejabat_blocked_login_regexp');
delete_site_option('ejabat_blocked_login_regexp');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ejabat_email_%', '_site_transient_ejabat_email_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ejabat_registered_vhosts');
delete_site_transient('ejabat_registered_vhosts');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ejabat_unreg_%', '_site_transient_ejabat_unreg_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ejabat_pass_%', '_site_transient_ejabat_pass_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ejabat_usercheck_com_%', '_site_transient_ejabat_usercheck_com_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ejabat_session_%', '_site_transient_ejabat_session_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ejabat_register_%', '_site_transient_ejabat_register_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ejabat_cron');

