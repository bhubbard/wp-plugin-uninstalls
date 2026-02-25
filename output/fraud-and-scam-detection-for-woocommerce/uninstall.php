<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%EnableRecaptcha' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%RecaptchaSelected' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lknFraudDetectionForWoocommerceEnableRecaptcha');
delete_site_option('lknFraudDetectionForWoocommerceEnableRecaptcha');
delete_option('lknFraudDetectionForWoocommercegoogleRecaptchaV3Key');
delete_site_option('lknFraudDetectionForWoocommercegoogleRecaptchaV3Key');
delete_option('lknFraudDetectionForWoocommerceGoogleRecaptchaV3Score');
delete_site_option('lknFraudDetectionForWoocommerceGoogleRecaptchaV3Score');
delete_option('lknFraudDetectionForWoocommerceGoogleRecaptchaV3Secret');
delete_site_option('lknFraudDetectionForWoocommerceGoogleRecaptchaV3Secret');
delete_option('lknFraudDetectionForWoocommerceDebug');
delete_site_option('lknFraudDetectionForWoocommerceDebug');

