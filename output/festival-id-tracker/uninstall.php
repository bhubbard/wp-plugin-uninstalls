<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('festidtrack_db_version');
delete_site_option('festidtrack_db_version');
delete_option('festidtrack_redirect_url');
delete_site_option('festidtrack_redirect_url');
delete_option('festidtrack_redirect_enabled');
delete_site_option('festidtrack_redirect_enabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_festidtrack_total_calls_%', '_site_transient_festidtrack_total_calls_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_festidtrack_unique_ids_%', '_site_transient_festidtrack_unique_ids_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

