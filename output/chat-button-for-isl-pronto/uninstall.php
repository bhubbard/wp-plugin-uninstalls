<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dd_isl_pronto_scripturl');
delete_site_option('dd_isl_pronto_scripturl');
delete_option('dd_isl_pronto_imagepath');
delete_site_option('dd_isl_pronto_imagepath');
delete_option('dd_isl_pronto_offlineurl');
delete_site_option('dd_isl_pronto_offlineurl');
delete_option('dd_isl_pronto_domain');
delete_site_option('dd_isl_pronto_domain');
delete_option('dd_isl_pronto_filter');
delete_site_option('dd_isl_pronto_filter');
delete_option('dd_isl_pronto_stayontop');
delete_site_option('dd_isl_pronto_stayontop');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dd_isl_pronto_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dd_isl_pronto_showall');
delete_site_option('dd_isl_pronto_showall');
delete_option('dd_isl_pronto_position');
delete_site_option('dd_isl_pronto_position');

