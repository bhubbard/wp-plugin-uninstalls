<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsilitechsp_roles_discounts');
delete_site_option('rsilitechsp_roles_discounts');
delete_option('rsilitechsp_show_save_message');
delete_site_option('rsilitechsp_show_save_message');
delete_option('rsilitechsp_show_role_badge');
delete_site_option('rsilitechsp_show_role_badge');
delete_option('rsilitechsp_show_original_price');
delete_site_option('rsilitechsp_show_original_price');
delete_option('rsilitechsp_stack_with_coupons');
delete_site_option('rsilitechsp_stack_with_coupons');
delete_option('rsilitechsp_apply_to_sale_items');
delete_site_option('rsilitechsp_apply_to_sale_items');
delete_option('rsilitech_simple_pricing_activation_time');
delete_site_option('rsilitech_simple_pricing_activation_time');
delete_option('rsilitech_simple_pricing_notices_shown');
delete_site_option('rsilitech_simple_pricing_notices_shown');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_notice_dismissed', '_site_transient_%_notice_dismissed' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_upgrade_notice_dismissed', '_site_transient_%_upgrade_notice_dismissed' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_review_notice_dismissed', '_site_transient_%_review_notice_dismissed' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

