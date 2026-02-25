<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dc_menu_html_index');
delete_site_option('dc_menu_html_index');
delete_option('dc_menu_nonces_index');
delete_site_option('dc_menu_nonces_index');
delete_option('dc_mc_nocache_menus');
delete_site_option('dc_mc_nocache_menus');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dc_menu_html_%', '_site_transient_dc_menu_html_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

