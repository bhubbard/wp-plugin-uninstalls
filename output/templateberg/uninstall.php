<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__templateberg_do_redirect');
delete_site_option('__templateberg_do_redirect');
delete_option('__gutentor_do_redirect');
delete_site_option('__gutentor_do_redirect');

// Delete Transients
delete_transient('templateberg_edt_free');
delete_site_transient('templateberg_edt_free');
delete_transient('templateberg_edt_max');
delete_site_transient('templateberg_edt_max');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_edt_%', '_site_transient_templateberg_edt_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_tj_%', '_site_transient_templateberg_tj_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('templateberg_gt_max');
delete_site_transient('templateberg_gt_max');
delete_transient('templateberg_gt_total');
delete_site_transient('templateberg_gt_total');
delete_transient('templateberg_tt_max');
delete_site_transient('templateberg_tt_max');
delete_transient('templateberg_tt_total');
delete_site_transient('templateberg_tt_total');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_max', '_site_transient_%_max' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_total', '_site_transient_%_total' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_gt_%', '_site_transient_templateberg_gt_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_tt_%', '_site_transient_templateberg_tt_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_ct_p_%', '_site_transient_templateberg_ct_p_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_gt_p_%', '_site_transient_templateberg_gt_p_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_templateberg_tt_p_%', '_site_transient_templateberg_tt_p_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'templateberg-gutentor-imd-tmls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'templateberg-gutentor-imd-tmls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'templateberg-gutentor-imd-tmls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'templateberg-gutentor-imd-tmls' ) );

