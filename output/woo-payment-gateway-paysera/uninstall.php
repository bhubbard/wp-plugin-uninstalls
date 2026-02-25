<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_paysera_settings');
delete_site_option('woocommerce_paysera_settings');

// Delete Transients
delete_transient('paysera_plugins_needs_deactivation');
delete_site_transient('paysera_plugins_needs_deactivation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'paysera_new_delivery_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'paysera_new_delivery_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'paysera_new_delivery_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'paysera_new_delivery_notice' ) );

