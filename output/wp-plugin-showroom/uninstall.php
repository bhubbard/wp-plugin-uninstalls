<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plgshow_plugin_version');
delete_site_option('plgshow_plugin_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_plgshow_%', '_site_transient_plgshow_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

