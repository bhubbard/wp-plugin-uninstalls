<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minimum_custom');
delete_site_option('minimum_custom');
delete_option('maximum_custom');
delete_site_option('maximum_custom');
delete_option('allowed_custom');
delete_site_option('allowed_custom');
delete_option('fgw_combo_custom');
delete_site_option('fgw_combo_custom');
delete_option('fgw_gift_multiple_custom');
delete_site_option('fgw_gift_multiple_custom');
delete_option('minimum_price');
delete_site_option('minimum_price');
delete_option('maximum_price');
delete_site_option('maximum_price');
delete_option('allowed_price');
delete_site_option('allowed_price');
delete_option('fgw_gift_multiple_price');
delete_site_option('fgw_gift_multiple_price');
delete_option('minimum_category');
delete_site_option('minimum_category');
delete_option('maximum_category');
delete_site_option('maximum_category');
delete_option('allowed_category');
delete_site_option('allowed_category');
delete_option('fgw_select_cats_category');
delete_site_option('fgw_select_cats_category');
delete_option('fgw_gift_multiple_category');
delete_site_option('fgw_gift_multiple_category');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%fgwerror', '_site_transient_%fgwerror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

