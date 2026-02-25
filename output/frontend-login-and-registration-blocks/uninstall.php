<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flr_blocks_limit_login_max_attempts');
delete_site_option('flr_blocks_limit_login_max_attempts');
delete_option('flr_blocks_limit_login_lockout_duration');
delete_site_option('flr_blocks_limit_login_lockout_duration');
delete_option('flr_blocks_enable_mails');
delete_site_option('flr_blocks_enable_mails');
delete_option('flr_blocks_enable_recaptcha');
delete_site_option('flr_blocks_enable_recaptcha');
delete_option('flr_blocks_enable_limit_login');
delete_site_option('flr_blocks_enable_limit_login');
delete_option('flr_blocks_has_activation');
delete_site_option('flr_blocks_has_activation');
delete_option('flr_blocks_redirect_after_login');
delete_site_option('flr_blocks_redirect_after_login');
delete_option('flr_blocks_redirect_from_wp_login_admin');
delete_site_option('flr_blocks_redirect_from_wp_login_admin');
delete_option('flr_blocks_login_page');
delete_site_option('flr_blocks_login_page');
delete_option('flr_blocks_enable_limit_reset_request_attempts');
delete_site_option('flr_blocks_enable_limit_reset_request_attempts');
delete_option('flr_blocks_lost_password_page');
delete_site_option('flr_blocks_lost_password_page');
delete_option('flr_blocks_enable_password_strength');
delete_site_option('flr_blocks_enable_password_strength');
delete_option('flr_blocks_register_page');
delete_site_option('flr_blocks_register_page');
delete_option('flr_blocks_activation_page');
delete_site_option('flr_blocks_activation_page');
delete_option('flr_blocks_user_settings_page');
delete_site_option('flr_blocks_user_settings_page');
delete_option('flr_blocks_terms_and_conditions_page');
delete_site_option('flr_blocks_terms_and_conditions_page');
delete_option('flr_blocks_privacy_policy_page');
delete_site_option('flr_blocks_privacy_policy_page');
delete_option('flr_blocks_has_user_dashboard');
delete_site_option('flr_blocks_has_user_dashboard');
delete_option('flr_blocks_register_mail_to_user');
delete_site_option('flr_blocks_register_mail_to_user');
delete_option('flr_blocks_register_mail_to_user_with_activation');
delete_site_option('flr_blocks_register_mail_to_user_with_activation');
delete_option('flr_blocks_register_mail_to_admin');
delete_site_option('flr_blocks_register_mail_to_admin');
delete_option('flr_blocks_reset_request_mail_to_user');
delete_site_option('flr_blocks_reset_request_mail_to_user');
delete_option('flr_blocks_reset_password_mail_to_user');
delete_site_option('flr_blocks_reset_password_mail_to_user');
delete_option('flr_blocks_enable_username_validation');
delete_site_option('flr_blocks_enable_username_validation');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_login_attempts_%', '_site_transient_login_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_user_activation_%', '_site_transient_user_activation_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_reset_attempts_%', '_site_transient_reset_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'flr_blocks_user_activation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'flr_blocks_user_activation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'flr_blocks_user_activation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'flr_blocks_user_activation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'flr_blocks_user_activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'flr_blocks_user_activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'flr_blocks_user_activation_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'flr_blocks_user_activation_code' ) );

