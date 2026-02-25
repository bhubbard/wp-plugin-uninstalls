<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drgf_do_activation_redirect');
delete_site_option('drgf_do_activation_redirect');
delete_option('drgf_fonts_check_result');
delete_site_option('drgf_fonts_check_result');
delete_option('drgf_fonts_check_time');
delete_site_option('drgf_fonts_check_time');
delete_option('dismissed-drgf-welcome');
delete_site_option('dismissed-drgf-welcome');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fusion_options');
delete_site_option('fusion_options');

// Delete Transients
delete_transient('drgf_captured_html');
delete_site_transient('drgf_captured_html');

