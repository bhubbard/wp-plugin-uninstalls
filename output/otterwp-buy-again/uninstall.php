<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('otterwp_buy_again_colors');
delete_site_option('otterwp_buy_again_colors');
delete_option('otterwp_buy_again_flush_needed');
delete_site_option('otterwp_buy_again_flush_needed');

// Delete Transients
delete_transient('otterwp_buy_again_css_error');
delete_site_transient('otterwp_buy_again_css_error');
delete_transient('otterwp_buy_again_css_needs_update');
delete_site_transient('otterwp_buy_again_css_needs_update');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_otterwp_buy_again_categories_%', '_site_transient_otterwp_buy_again_categories_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

