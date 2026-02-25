<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_nomod_settings');
delete_site_option('woocommerce_nomod_settings');
delete_option('secret_key');
delete_site_option('secret_key');
delete_option('nomod_plugin_version');
delete_site_option('nomod_plugin_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_nomod_refund_blocked_%', '_site_transient_nomod_refund_blocked_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

