<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tx_rupture');
delete_site_option('tx_rupture');
delete_option('tx_faible');
delete_site_option('tx_faible');
delete_option('tx_ok');
delete_site_option('tx_ok');
delete_option('qt_faible');
delete_site_option('qt_faible');
delete_option('icon_woo_stock_1');
delete_site_option('icon_woo_stock_1');
delete_option('woocommerce_stock_format');
delete_site_option('woocommerce_stock_format');
delete_option('woo-icon-stock-custom');
delete_site_option('woo-icon-stock-custom');
delete_option('upload_icon_stock');
delete_site_option('upload_icon_stock');
delete_option('upload_icon_stock_faible');
delete_site_option('upload_icon_stock_faible');
delete_option('upload_icon_stock_ok');
delete_site_option('upload_icon_stock_ok');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_icon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_icon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_icon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_icon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_icon_stock_seuil' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_icon_stock_seuil' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_icon_stock_seuil' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_icon_stock_seuil' ) );

