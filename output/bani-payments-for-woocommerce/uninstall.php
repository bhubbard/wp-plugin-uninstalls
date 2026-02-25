<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bani_widget_hash_mismatch');
delete_site_option('bani_widget_hash_mismatch');
delete_option('bani_widget_verified_hash');
delete_site_option('bani_widget_verified_hash');
delete_option('bani_last_security_alert_time');
delete_site_option('bani_last_security_alert_time');
delete_option('bani_security_alerts');
delete_site_option('bani_security_alerts');
delete_option('bani_url_violation_log');
delete_site_option('bani_url_violation_log');
delete_option('bani_amount_tampering_log');
delete_site_option('bani_amount_tampering_log');
delete_option('woocommerce_bani_settings');
delete_site_option('woocommerce_bani_settings');

