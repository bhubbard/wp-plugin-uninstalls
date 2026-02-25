<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hi_express_settings');
delete_site_option('hi_express_settings');
delete_option('hi_express_webhook_registered');
delete_site_option('hi_express_webhook_registered');

// Delete Transients
delete_transient('hi_express_govs_simple_v2');
delete_site_transient('hi_express_govs_simple_v2');
delete_transient('hi_express_govs_v5');
delete_site_transient('hi_express_govs_v5');
delete_transient('hi_express_order_statuses_v2');
delete_site_transient('hi_express_order_statuses_v2');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hi_express_bulk_errors_%', '_site_transient_hi_express_bulk_errors_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

