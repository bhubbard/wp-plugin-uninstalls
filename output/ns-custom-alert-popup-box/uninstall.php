<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ns_wcapb_test_mode');
delete_site_option('ns_wcapb_test_mode');
delete_option('ns_wcapb_text');
delete_site_option('ns_wcapb_text');
delete_option('ns_wcapb_delay');
delete_site_option('ns_wcapb_delay');
delete_option('wt_wcapb_color_layer');
delete_site_option('wt_wcapb_color_layer');
delete_option('wt_wcapb_opacity_layer');
delete_site_option('wt_wcapb_opacity_layer');
delete_option('wt_wcapb_color_content');
delete_site_option('wt_wcapb_color_content');
delete_option('wt_wcapb_border_size');
delete_site_option('wt_wcapb_border_size');
delete_option('wt_wcapb_border_color');
delete_site_option('wt_wcapb_border_color');
delete_option('wt_wcapb_padding');
delete_site_option('wt_wcapb_padding');
delete_option('ns_wcapb_test_mode_premium');
delete_site_option('ns_wcapb_test_mode_premium');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pe-plugin-id-response-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plugineye_init%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

