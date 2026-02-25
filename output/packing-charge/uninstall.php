<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pacs_calculation_type');
delete_site_option('pacs_calculation_type');
delete_option('pacs_amount');
delete_site_option('pacs_amount');
delete_option('pacs_enable_product_exclusion');
delete_site_option('pacs_enable_product_exclusion');
delete_option('pacs_enable');
delete_site_option('pacs_enable');
delete_option('pacs_label');
delete_site_option('pacs_label');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_exclude_packing_charge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_exclude_packing_charge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_exclude_packing_charge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_exclude_packing_charge' ) );

