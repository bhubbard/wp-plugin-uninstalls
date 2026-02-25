<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky-header-2020-last-update');
delete_site_option('sticky-header-2020-last-update');
delete_option('sticky-header-2020-styles');
delete_site_option('sticky-header-2020-styles');
delete_option('sticky-header-2020-scripts');
delete_site_option('sticky-header-2020-scripts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_actions_notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_adons_notice', '_site_transient_%_adons_notice' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

