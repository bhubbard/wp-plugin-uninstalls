<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_paynecta_settings');
delete_site_option('woocommerce_paynecta_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_paynecta_payment_links_%', '_site_transient_paynecta_payment_links_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

