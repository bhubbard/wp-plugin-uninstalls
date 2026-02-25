<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tt_arkam_lite');
delete_site_option('tt_arkam_lite');

// Delete Transients
delete_transient('tt_arkam_lite_activated');
delete_site_transient('tt_arkam_lite_activated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tt_arkam_lite_%', '_site_transient_tt_arkam_lite_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

