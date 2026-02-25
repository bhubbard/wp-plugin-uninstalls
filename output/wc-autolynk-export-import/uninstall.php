<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woei_customer_tracking_note');
delete_site_option('woei_customer_tracking_note');
delete_option('woei_tracking_url');
delete_site_option('woei_tracking_url');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_waei-import-file-%', '_site_transient_waei-import-file-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

