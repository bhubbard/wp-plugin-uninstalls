<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affinidi_options');
delete_site_option('affinidi_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_affinidi_user_redirect_to%', '_site_transient_affinidi_user_redirect_to%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

