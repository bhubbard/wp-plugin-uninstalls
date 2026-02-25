<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_pgbsm_use_shipping_instance');
delete_site_option('alg_wc_pgbsm_use_shipping_instance');
delete_option('alg_wc_pgbsm_reset_payment_method_on_totals');
delete_site_option('alg_wc_pgbsm_reset_payment_method_on_totals');
delete_option('alg_wc_pgbsm_version');
delete_site_option('alg_wc_pgbsm_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

