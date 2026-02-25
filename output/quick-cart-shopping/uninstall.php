<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcshopping_cart_settings');
delete_site_option('qcshopping_cart_settings');
delete_option('qcshopping_general_settings');
delete_site_option('qcshopping_general_settings');
delete_option('qcshopping_layout_settings');
delete_site_option('qcshopping_layout_settings');
delete_option('qcshopping_toggle_settings');
delete_site_option('qcshopping_toggle_settings');
delete_option('qcshopping_variation_popup_settings');
delete_site_option('qcshopping_variation_popup_settings');
delete_option('__qcshopping_pro_license_info');
delete_site_option('__qcshopping_pro_license_info');
delete_option('qcshopping_checkout_settings');
delete_site_option('qcshopping_checkout_settings');
delete_option('qcshopping_installation_time');
delete_site_option('qcshopping_installation_time');
delete_option('qcshopping_version');
delete_site_option('qcshopping_version');

// Delete Transients
delete_transient('qcshopping_activate_redirect');
delete_site_transient('qcshopping_activate_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

