<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_addons_settings');
delete_site_option('gf_addons_settings');
delete_option('recently_activated');
delete_site_option('recently_activated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_grid' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gf_directory_oid');
delete_site_option('gf_directory_oid');

// Delete Transients
delete_transient('kws_gf_activation_notice');
delete_site_transient('kws_gf_activation_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_showadminonly', '_site_transient_%_showadminonly' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

