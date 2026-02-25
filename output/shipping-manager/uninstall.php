<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpsm-shipping-calculator_settings');
delete_site_option('tpsm-shipping-calculator_settings');
delete_option('tpsm-general_settings');
delete_site_option('tpsm-general_settings');
delete_option('TPSM_version');
delete_site_option('TPSM_version');
delete_option('tpsm_is_setup_wizard');
delete_site_option('tpsm_is_setup_wizard');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('tpsm-free-shipping-barfree-shipping_settings');
delete_site_option('tpsm-free-shipping-barfree-shipping_settings');
delete_option('tpsm-shipping-fees_settings');
delete_site_option('tpsm-shipping-fees_settings');
delete_option('tpsm-box-shipping_settings');
delete_site_option('tpsm-box-shipping_settings');
delete_option('tpsm-free-shipping_settings');
delete_site_option('tpsm-free-shipping_settings');

// Delete Transients
delete_transient('tpsm_do_activation_redirect');
delete_site_transient('tpsm_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tpsm_dismissed_setup_notice' ) );

