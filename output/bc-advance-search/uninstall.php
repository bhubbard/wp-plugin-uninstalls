<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bigcommerce_currency_symbol');
delete_site_option('bigcommerce_currency_symbol');
delete_option('bigcommerce_advance_search_option_name');
delete_site_option('bigcommerce_advance_search_option_name');
delete_option('bas_design_search_box_general');
delete_site_option('bas_design_search_box_general');
delete_option('bas_design_search_box');
delete_site_option('bas_design_search_box');
delete_option('bas_design_search_button');
delete_site_option('bas_design_search_button');
delete_option('bas_design_search_others');
delete_site_option('bas_design_search_others');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bigcommerce_calculated_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bigcommerce_calculated_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bigcommerce_calculated_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bigcommerce_calculated_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bigcommerce_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bigcommerce_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bigcommerce_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bigcommerce_id' ) );

