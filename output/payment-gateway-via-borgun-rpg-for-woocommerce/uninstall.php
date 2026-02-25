<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('borgun-rpg-notice-dismissed');
delete_site_option('borgun-rpg-notice-dismissed');
delete_option('woocommerce_borgun_rpg_settings');
delete_site_option('woocommerce_borgun_rpg_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_processing', '_site_transient_%_processing' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

