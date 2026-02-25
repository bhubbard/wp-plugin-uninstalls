<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('signals_csmm_meta');
delete_site_option('signals_csmm_meta');
delete_option('signals_csmm_options');
delete_site_option('signals_csmm_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wf_licensing_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('csmm_pointers');
delete_site_option('csmm_pointers');

// Delete Transients
delete_transient('csmm_error_msg');
delete_site_transient('csmm_error_msg');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_signals_csmm_err_%', '_site_transient_signals_csmm_err_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('csmm_rate_hide');
delete_site_transient('csmm_rate_hide');
delete_transient('csmm_welcome_hide');
delete_site_transient('csmm_welcome_hide');
delete_transient('csmm_olduser_hide');
delete_site_transient('csmm_olduser_hide');
delete_transient('csmm_subscribe_hide');
delete_site_transient('csmm_subscribe_hide');

