<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xh_latipay');
delete_site_option('xh_latipay');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_nzbanks_settings');
delete_site_option('woocommerce_nzbanks_settings');
delete_option('woocommerce_payid_settings');
delete_site_option('woocommerce_payid_settings');

