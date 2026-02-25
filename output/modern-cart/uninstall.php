<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moderncart_is_onboarding_complete');
delete_site_option('moderncart_is_onboarding_complete');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_private_link');
delete_site_option('woocommerce_private_link');
delete_option('woocommerce_share_key');
delete_site_option('woocommerce_share_key');
delete_option('moderncart_version');
delete_site_option('moderncart_version');

// Delete Transients
delete_transient('moderncart_redirect_to_onboarding');
delete_site_transient('moderncart_redirect_to_onboarding');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );

