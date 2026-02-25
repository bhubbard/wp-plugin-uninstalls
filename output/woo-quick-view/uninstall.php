<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcqv_options');
delete_site_option('wcqv_options');
delete_option('wcqv_style');
delete_site_option('wcqv_style');
delete_option('wpcqv_view_install_date');
delete_site_option('wpcqv_view_install_date');
delete_option('woocommerce_enable_lightbox');
delete_site_option('woocommerce_enable_lightbox');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpcqv_view_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpcqv_view_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpcqv_view_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpcqv_view_ignore_notice' ) );

