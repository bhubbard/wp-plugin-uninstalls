<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DataAnalysis1on1Secure');
delete_site_option('DataAnalysis1on1Secure');
delete_option('APIKey1on1Secure');
delete_site_option('APIKey1on1Secure');
delete_option('OnlyUSAVisitor1on1Secure');
delete_site_option('OnlyUSAVisitor1on1Secure');
delete_option('TorUser1on1Secure');
delete_site_option('TorUser1on1Secure');
delete_option('ActionForBadIPs1on1Secure');
delete_site_option('ActionForBadIPs1on1Secure');
delete_option('ErrorPageForBadIPs1on1Secure');
delete_site_option('ErrorPageForBadIPs1on1Secure');
delete_option('toruser1on1secure');
delete_site_option('toruser1on1secure');
delete_option('errorpageforbadips1on1secure');
delete_site_option('errorpageforbadips1on1secure');
delete_option('actionforbadips1on1secure');
delete_site_option('actionforbadips1on1secure');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_1on1secure_%', '_site_transient_1on1secure_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

