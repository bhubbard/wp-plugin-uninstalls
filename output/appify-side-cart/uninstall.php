<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lii-ajaxcart_do_activation_redirect');
delete_site_option('lii-ajaxcart_do_activation_redirect');
delete_option('lii-ajaxcart_installed');
delete_site_option('lii-ajaxcart_installed');
delete_option('lii-ajaxcart_version');
delete_site_option('lii-ajaxcart_version');
delete_option('lii_ajaxcart_woocommerce_cart_redirect_after_add');
delete_site_option('lii_ajaxcart_woocommerce_cart_redirect_after_add');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('Lii-ajax-add-to-cart-option');
delete_site_option('Lii-ajax-add-to-cart-option');
delete_option('Lii-ajax-single-product-page-add-to-cart-option');
delete_site_option('Lii-ajax-single-product-page-add-to-cart-option');
delete_option('Lii-showing-product-quantity-box-option');
delete_site_option('Lii-showing-product-quantity-box-option');
delete_option('Lii-cart-order-option');
delete_site_option('Lii-cart-order-option');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );

