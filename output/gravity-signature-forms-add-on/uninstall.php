<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esig_global_document_id');
delete_site_option('esig_global_document_id');
delete_option('remove_rating_widget_gravity');
delete_site_option('remove_rating_widget_gravity');
delete_option('WP_ESignature__Gravity Form_documentation');
delete_site_option('WP_ESignature__Gravity Form_documentation');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_esig-gf-wc-agreement%', '_site_transient_esig-gf-wc-agreement%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_esig-gf-redirect-%', '_site_transient_esig-gf-redirect-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_esig-gf-agreement-created%', '_site_transient_esig-gf-agreement-created%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_esign_gravity_redirect');
delete_site_transient('_esign_gravity_redirect');

