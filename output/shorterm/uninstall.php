<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shorterm_db_version');
delete_site_option('shorterm_db_version');

// Delete Transients
delete_transient('shorterm_all_links');
delete_site_transient('shorterm_all_links');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_shorterm_link_%', '_site_transient_shorterm_link_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

