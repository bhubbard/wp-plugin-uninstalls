<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_plugins_archive_result_post_notice_%', '_site_transient_plugins_archive_result_post_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

