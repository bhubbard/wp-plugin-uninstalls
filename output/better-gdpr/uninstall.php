<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bettergdpr_xtoken');
delete_site_option('bettergdpr_xtoken');
delete_option('bettergdpr_subdomain');
delete_site_option('bettergdpr_subdomain');
delete_option('privacybunker_subdomain');
delete_site_option('privacybunker_subdomain');
delete_option('bettergdpr_sitekey');
delete_site_option('bettergdpr_sitekey');
delete_option('woocommerce_enable_myaccount_registration');
delete_site_option('woocommerce_enable_myaccount_registration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_export_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_export_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_export_file_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_export_file_url' ) );

