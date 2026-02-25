<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coderockz_advance_cod_restriction_settings');
delete_site_option('coderockz_advance_cod_restriction_settings');
delete_option('coderockz_advance_cod_localization_settings');
delete_site_option('coderockz_advance_cod_localization_settings');
delete_option('coderockz_advance_cod_large_product_list');
delete_site_option('coderockz_advance_cod_large_product_list');
delete_option('coderockz-wc-advance-cod-free-activation-time');
delete_site_option('coderockz-wc-advance-cod-free-activation-time');
delete_option('coderockz-woo-delivery-license-status');
delete_site_option('coderockz-woo-delivery-license-status');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_virtual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_downloadable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_downloadable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_downloadable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_downloadable' ) );

