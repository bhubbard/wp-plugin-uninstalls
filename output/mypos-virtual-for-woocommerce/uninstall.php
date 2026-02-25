<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_mypos_virtual_settings');
delete_site_option('woocommerce_mypos_virtual_settings');
delete_option('mypos_schema_missing_tables');
delete_site_option('mypos_schema_missing_tables');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

// Delete Transients
delete_transient('mypos_installing');
delete_site_transient('mypos_installing');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mypos_update_order_%', '_site_transient_mypos_update_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('mypos_check_payment_status');

