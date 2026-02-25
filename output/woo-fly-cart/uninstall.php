<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woofc_settings');
delete_site_option('woofc_settings');
delete_option('woofc_localization');
delete_site_option('woofc_localization');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woofc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');

// Delete Transients
delete_transient('wpclever_plugins');
delete_site_transient('wpclever_plugins');

