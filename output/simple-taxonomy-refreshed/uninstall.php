<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('settings_updated');
delete_site_option('settings_updated');

// Delete Transients
delete_transient('simple_taxonomy_refreshed_rewrite');
delete_site_transient('simple_taxonomy_refreshed_rewrite');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_staxo_sel_%', '_site_transient_staxo_sel_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

