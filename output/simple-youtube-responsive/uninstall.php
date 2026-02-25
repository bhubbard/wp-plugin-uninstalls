<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_erdyt_options');
delete_site_option('_erdyt_options');
delete_option('_eirudo_ytresponsive_ratio');
delete_site_option('_eirudo_ytresponsive_ratio');
delete_option('_eirudo_ytresponsive_maxwidth');
delete_site_option('_eirudo_ytresponsive_maxwidth');
delete_option('_eirudo_ytresponsive_classes');
delete_site_option('_eirudo_ytresponsive_classes');
delete_option('_eirudo_ytresponsive_center');
delete_site_option('_eirudo_ytresponsive_center');
delete_option('_eirudo_ytresponsive_autoplay');
delete_site_option('_eirudo_ytresponsive_autoplay');
delete_option('_eirudo_ytresponsive_loop');
delete_site_option('_eirudo_ytresponsive_loop');
delete_option('_eirudo_ytresponsive_fullscreen');
delete_site_option('_eirudo_ytresponsive_fullscreen');
delete_option('_eirudo_ytresponsive_lazy');
delete_site_option('_eirudo_ytresponsive_lazy');
delete_option('_eirudo_ytresponsive_thumbsize');
delete_site_option('_eirudo_ytresponsive_thumbsize');
delete_option('_eirudo_ytresponsive_js');
delete_site_option('_eirudo_ytresponsive_js');
delete_option('_eirudo_ytresponsive_css');
delete_site_option('_eirudo_ytresponsive_css');
delete_option('_eirudo_ytresponsive_printedscripts');
delete_site_option('_eirudo_ytresponsive_printedscripts');
delete_option('_erdyt_ver');
delete_site_option('_erdyt_ver');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_eirudo_ytresponsive_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

