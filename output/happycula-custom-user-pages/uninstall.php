<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-login' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-after-login' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-after-logout' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-register' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-lostpassword' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-resetpassword' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-editprofile' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-pages-account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-recaptcha-site-key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-recaptcha-secret-key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('happycula-custom-user-pages-pages-login');
delete_site_option('happycula-custom-user-pages-pages-login');
delete_option('happycula-custom-user-pages-pages-after-login');
delete_site_option('happycula-custom-user-pages-pages-after-login');
delete_option('happycula-custom-user-pages-pages-after-logout');
delete_site_option('happycula-custom-user-pages-pages-after-logout');
delete_option('happycula-custom-user-pages-pages-register');
delete_site_option('happycula-custom-user-pages-pages-register');
delete_option('happycula-custom-user-pages-pages-lostpassword');
delete_site_option('happycula-custom-user-pages-pages-lostpassword');
delete_option('happycula-custom-user-pages-pages-resetpassword');
delete_site_option('happycula-custom-user-pages-pages-resetpassword');
delete_option('happycula-custom-user-pages-pages-editprofile');
delete_site_option('happycula-custom-user-pages-pages-editprofile');
delete_option('happycula-custom-user-pages-pages-account');
delete_site_option('happycula-custom-user-pages-pages-account');
delete_option('happycula-custom-user-pages-recaptcha-site-key');
delete_site_option('happycula-custom-user-pages-recaptcha-site-key');
delete_option('happycula-custom-user-pages-recaptcha-secret-key');
delete_site_option('happycula-custom-user-pages-recaptcha-secret-key');

