<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kaw-subdomain');
delete_site_option('kaw-subdomain');
delete_option('kaw-key');
delete_site_option('kaw-key');
delete_option('kaw-warehouse');
delete_site_option('kaw-warehouse');
delete_option('kaw-message-active');
delete_site_option('kaw-message-active');
delete_option('kaw-synchronize-at-singleproduct');
delete_site_option('kaw-synchronize-at-singleproduct');
delete_option('kaw-synchronize-at-cart');
delete_site_option('kaw-synchronize-at-cart');
delete_option('kaw-synchronize-on-order');
delete_site_option('kaw-synchronize-on-order');
delete_option('kaw-logging-size');
delete_site_option('kaw-logging-size');
delete_option('kaw-logging');
delete_site_option('kaw-logging');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('logging-info');
delete_site_option('logging-info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_manage_stock' ) );

