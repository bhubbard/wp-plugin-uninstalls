<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tap_account_id');
delete_site_option('tap_account_id');
delete_option('tap_wc_enabled');
delete_site_option('tap_wc_enabled');
delete_option('tap_ec_enabled');
delete_site_option('tap_ec_enabled');
delete_option('tap_wc_use_woo_customer_id_for_lifetime');
delete_site_option('tap_wc_use_woo_customer_id_for_lifetime');
delete_option('tap_wc_connected');
delete_site_option('tap_wc_connected');
delete_option('thank_you_page');
delete_site_option('thank_you_page');
delete_option('query_parameter_external_id');
delete_site_option('query_parameter_external_id');
delete_option('query_parameter_conversion_amount');
delete_site_option('query_parameter_conversion_amount');
delete_option('integrate_for');
delete_site_option('integrate_for');
delete_option('tap_plugin_version');
delete_site_option('tap_plugin_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tapfiliate_category_commission_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tapfiliate_category_commission_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tapfiliate_category_commission_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tapfiliate_category_commission_type' ) );

