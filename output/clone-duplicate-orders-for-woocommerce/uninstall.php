<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdo_wc_acf_option_fields');
delete_site_option('cdo_wc_acf_option_fields');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdo_wc_cloning_order_%', '_site_transient_cdo_wc_cloning_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cdo_wc_clone_order_admin_notice');
delete_site_transient('cdo_wc_clone_order_admin_notice');
delete_transient('cdo_wc_activated_plugin');
delete_site_transient('cdo_wc_activated_plugin');

