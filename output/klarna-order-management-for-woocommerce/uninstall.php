<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kom_settings');
delete_site_option('kom_settings');
delete_option('woocommerce_kco_settings');
delete_site_option('woocommerce_kco_settings');
delete_option('woocommerce_klarna_payments_settings');
delete_site_option('woocommerce_klarna_payments_settings');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kp_unavailable_feature_ids');
delete_site_option('kp_unavailable_feature_ids');

