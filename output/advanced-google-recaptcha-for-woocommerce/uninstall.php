<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_recaptcha_version');
delete_site_option('wc_recaptcha_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_recaptcha_site_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_recaptcha_secret_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_recaptcha_language');
delete_site_option('wc_recaptcha_language');
delete_option('wc_recaptcha_theme');
delete_site_option('wc_recaptcha_theme');
delete_option('wc_recaptcha_size');
delete_site_option('wc_recaptcha_size');
delete_option('wc_enable_login_recaptcha');
delete_site_option('wc_enable_login_recaptcha');
delete_option('wc_enable_register_recaptcha');
delete_site_option('wc_enable_register_recaptcha');
delete_option('wc_enable_password_reset_recaptcha');
delete_site_option('wc_enable_password_reset_recaptcha');
delete_option('wc_enable_checkout_recaptcha');
delete_site_option('wc_enable_checkout_recaptcha');

