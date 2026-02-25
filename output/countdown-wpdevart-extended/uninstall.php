<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpda_countdown_extended_params');
delete_site_option('wpda_countdown_extended_params');
delete_option('wpdevart_countdown_extended_popup_enable');
delete_site_option('wpdevart_countdown_extended_popup_enable');
delete_option('wpdevart_countdown_extended_product_postiton');
delete_site_option('wpdevart_countdown_extended_product_postiton');
delete_option('wpdevart_countdown_extended_shop_position');
delete_site_option('wpdevart_countdown_extended_shop_position');
delete_option('woocommerce_enable_timer_in_all_prod');
delete_site_option('woocommerce_enable_timer_in_all_prod');
delete_option('wpdevart_countdown_woocommerce_all_timer');
delete_site_option('wpdevart_countdown_woocommerce_all_timer');
delete_option('wpdevart_countdown_woocommerce_all_theme');
delete_site_option('wpdevart_countdown_woocommerce_all_theme');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpda_countdown_extended_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpda_countdown_extended_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpda_countdown_extended_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpda_countdown_extended_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpda_countdown_extended_timer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpda_countdown_extended_timer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpda_countdown_extended_timer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpda_countdown_extended_timer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpda_countdown_extended_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpda_countdown_extended_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpda_countdown_extended_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpda_countdown_extended_theme' ) );

