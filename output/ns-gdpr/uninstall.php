<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ns-gdpr-enable-comments');
delete_site_option('ns-gdpr-enable-comments');
delete_option('ns-gdpr-comments-checkbox-text');
delete_site_option('ns-gdpr-comments-checkbox-text');
delete_option('ns-gdpr-comments-checkbox-error-text');
delete_site_option('ns-gdpr-comments-checkbox-error-text');
delete_option('ns-gdpr-enable-cf7');
delete_site_option('ns-gdpr-enable-cf7');
delete_option('ns-gdpr-enable-cf7-text');
delete_site_option('ns-gdpr-enable-cf7-text');
delete_option('ns-gdpr-enable-cf7-error-text');
delete_site_option('ns-gdpr-enable-cf7-error-text');
delete_option('test_validate_cf7');
delete_site_option('test_validate_cf7');
delete_option('test_validate_cf7_2');
delete_site_option('test_validate_cf7_2');
delete_option('ns-gdpr-enable-wc');
delete_site_option('ns-gdpr-enable-wc');
delete_option('ns-gdpr-enable-wc-text');
delete_site_option('ns-gdpr-enable-wc-text');
delete_option('ns-gdpr-enable-wc-error-text');
delete_site_option('ns-gdpr-enable-wc-error-text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pe-plugin-id-response-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plugineye_init%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );

