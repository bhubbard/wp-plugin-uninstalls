<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wc_filter_relate_term_product_cat');
delete_site_transient('wc_filter_relate_term_product_cat');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wc_filter_relate_term_%', '_site_transient_wc_filter_relate_term_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

