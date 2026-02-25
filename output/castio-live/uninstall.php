<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('castio_rewrite_flushed');
delete_site_option('castio_rewrite_flushed');
delete_option('castio_rewrite_sig');
delete_site_option('castio_rewrite_sig');
delete_option('castio_hls_latency');
delete_site_option('castio_hls_latency');
delete_option('castio_default_poll');
delete_site_option('castio_default_poll');
delete_option('castio_max_minutes');
delete_site_option('castio_max_minutes');
delete_option('castio_invite_enabled');
delete_site_option('castio_invite_enabled');
delete_option('castio_invite_subject');
delete_site_option('castio_invite_subject');
delete_option('castio_license_key');
delete_site_option('castio_license_key');
delete_option('castio_stripe_pk');
delete_site_option('castio_stripe_pk');
delete_option('castio_stripe_sk');
delete_site_option('castio_stripe_sk');
delete_option('castio_default_currency');
delete_site_option('castio_default_currency');
delete_option('castio_invite_template');
delete_site_option('castio_invite_template');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_last', '_site_transient_%_last' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_win', '_site_transient_%_win' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('castio_license_status');
delete_site_transient('castio_license_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'castio_purchases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'castio_purchases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'castio_purchases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'castio_purchases' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'castio_purchases_detail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'castio_purchases_detail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'castio_purchases_detail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'castio_purchases_detail' ) );

