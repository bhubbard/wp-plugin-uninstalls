<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eldolink_affiliate');
delete_site_option('eldolink_affiliate');
delete_option('eldolink_token');
delete_site_option('eldolink_token');
delete_option('eldolink_modal_display');
delete_site_option('eldolink_modal_display');
delete_option('eldolink_modal_tool');
delete_site_option('eldolink_modal_tool');
delete_option('eldolink_modal_type');
delete_site_option('eldolink_modal_type');
delete_option('eldolink_modal_width');
delete_site_option('eldolink_modal_width');
delete_option('eldolink_modal_height');
delete_site_option('eldolink_modal_height');
delete_option('eldolink_modal_r');
delete_site_option('eldolink_modal_r');
delete_option('eldolink_modal_trk1');
delete_site_option('eldolink_modal_trk1');
delete_option('eldolink_modal_trk2');
delete_site_option('eldolink_modal_trk2');

// Delete Transients
delete_transient('ldo_affiliate');
delete_site_transient('ldo_affiliate');
delete_transient('ldo_products');
delete_site_transient('ldo_products');
delete_transient('ldo_formats');
delete_site_transient('ldo_formats');
delete_transient('ldo_domains');
delete_site_transient('ldo_domains');
delete_transient('ldo_pricing_models');
delete_site_transient('ldo_pricing_models');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ldo_formats_%', '_site_transient_ldo_formats_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ldo_tools_%', '_site_transient_ldo_tools_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ldo_modals');
delete_site_transient('ldo_modals');

