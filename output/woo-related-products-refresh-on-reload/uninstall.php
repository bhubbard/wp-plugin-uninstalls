<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woorelated_wtitle');
delete_site_option('woorelated_wtitle');
delete_option('woorelated_nproducts');
delete_site_option('woorelated_nproducts');
delete_option('woorelated_basedon');
delete_site_option('woorelated_basedon');
delete_option('woorelated_exclude');
delete_site_option('woorelated_exclude');
delete_option('woorelated_slider');
delete_site_option('woorelated_slider');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wrprr_peachpay_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wrprr_peachpay_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wrprr_peachpay_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wrprr_peachpay_banner_dismissed' ) );

