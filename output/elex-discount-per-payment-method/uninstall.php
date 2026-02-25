<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('elex_discount_per_payment_method_options');
delete_site_option('elex_discount_per_payment_method_options');
delete_option('elex_wfp_discount_per_payment_method_label');
delete_site_option('elex_wfp_discount_per_payment_method_label');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'elex_wfp_discount_per_payment_method_available_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

