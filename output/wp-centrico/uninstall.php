<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('centrico_woocommerce_checkbox');
delete_site_option('centrico_woocommerce_checkbox');
delete_option('centrico_woocommerce_checkboxautocheck');
delete_site_option('centrico_woocommerce_checkboxautocheck');
delete_option('centrico_woocommerce_checkboxlabel');
delete_site_option('centrico_woocommerce_checkboxlabel');
delete_option('centrico_woocommerce_fields');
delete_site_option('centrico_woocommerce_fields');
delete_option('centrico_woocommerce_list_id');
delete_site_option('centrico_woocommerce_list_id');
delete_option('centrico_woocommerce_groups_id');
delete_site_option('centrico_woocommerce_groups_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'centrico_centrico_woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'centrico_centrico_woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'centrico_centrico_woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'centrico_centrico_woocommerce' ) );

