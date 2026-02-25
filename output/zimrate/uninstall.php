<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zimrate-prefer');
delete_site_option('zimrate-prefer');
delete_option('zimrate-interval');
delete_site_option('zimrate-interval');
delete_option('zimrate-cushion');
delete_site_option('zimrate-cushion');
delete_option('zimrate-currencies');
delete_site_option('zimrate-currencies');
delete_option('zimrate-analytics');
delete_site_option('zimrate-analytics');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_USD' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_currency_switcher_exchange_rate_offset');
delete_site_option('alg_currency_switcher_exchange_rate_offset');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-backup', '_site_transient_%-backup' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('zimrate-backup');
delete_site_transient('zimrate-backup');
delete_transient('zimrate');
delete_site_transient('zimrate');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_zimrate-%', '_site_transient_zimrate-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

