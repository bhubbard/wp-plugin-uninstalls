<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cybersmartdefence_do_activation_redirect');
delete_site_option('cybersmartdefence_do_activation_redirect');

// Delete Transients
delete_transient('cybersmartdefence_table_created');
delete_site_transient('cybersmartdefence_table_created');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cybersmartdefence_block_%', '_site_transient_cybersmartdefence_block_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

