<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_gf_billingo_pro_enabled');
delete_site_option('_gf_billingo_pro_enabled');
delete_option('_gf_billingo_pro_key');
delete_site_option('_gf_billingo_pro_key');
delete_option('_gf_billingo_pro_email');
delete_site_option('_gf_billingo_pro_email');
delete_option('_gf_billingo_error');
delete_site_option('_gf_billingo_error');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gf_billingo_bank_accounts_%', '_site_transient_gf_billingo_bank_accounts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gf_billingo_invoice_blocks_%', '_site_transient_gf_billingo_invoice_blocks_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gf_billingo_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gf_billingo_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gf_billingo_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gf_billingo_admin_notices' ) );

