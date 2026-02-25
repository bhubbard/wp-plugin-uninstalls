<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-sms-46elks-from');
delete_site_option('wp-sms-46elks-from');
delete_option('wp-sms-46elks-default-countrycode');
delete_site_option('wp-sms-46elks-default-countrycode');
delete_option('wp-sms-46elks-balancealert');
delete_site_option('wp-sms-46elks-balancealert');
delete_option('wp-sms-46elks-balancealerte-mail');
delete_site_option('wp-sms-46elks-balancealerte-mail');
delete_option('wp-sms-46elks-balancealert-phone-number');
delete_site_option('wp-sms-46elks-balancealert-phone-number');
delete_option('wp-sms-46elks-balancealert-sent');
delete_site_option('wp-sms-46elks-balancealert-sent');
delete_option('wp-sms-46elks-api-username');
delete_site_option('wp-sms-46elks-api-username');
delete_option('wp-sms-46elks-api-password');
delete_site_option('wp-sms-46elks-api-password');
delete_option('wp-sms-46elks-cf7-form-name');
delete_site_option('wp-sms-46elks-cf7-form-name');
delete_option('wp-sms-46elks-cf7-send-sms');
delete_site_option('wp-sms-46elks-cf7-send-sms');
delete_option('wp-sms-46elks-cf7-send-to');
delete_site_option('wp-sms-46elks-cf7-send-to');
delete_option('wp-sms-46elks-cf7-sms-content');
delete_site_option('wp-sms-46elks-cf7-sms-content');
delete_option('wp-sms-46elks-cf7-sender-id');
delete_site_option('wp-sms-46elks-cf7-sender-id');
delete_option('wp-sms-46elks-cf7-from');
delete_site_option('wp-sms-46elks-cf7-from');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-cf7-form-name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-cf7-from' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-cf7-sms-content' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-cf7-sender-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-cf7-send-to' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-balancealert' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-balancealert-sent' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-from' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-balancealert-email' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-balancealert-phone-number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-api-username' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-api-password' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-cf7-sender-id-test' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-default-countrycode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

