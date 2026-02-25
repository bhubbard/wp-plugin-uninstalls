<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_curtain_raiser_options');
delete_site_option('wp_curtain_raiser_options');
delete_option('wcr_active_token');
delete_site_option('wcr_active_token');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wcr_reveal_token_%', '_site_transient_wcr_reveal_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

