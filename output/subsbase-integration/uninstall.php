<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbse_embed_values');
delete_site_option('sbse_embed_values');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sbis_result_%', '_site_transient_sbis_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

