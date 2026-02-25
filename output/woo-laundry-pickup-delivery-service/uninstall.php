<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('byclaundryservice_pickup_time_slot_by_start');
delete_site_option('byclaundryservice_pickup_time_slot_by_start');
delete_option('byclaundryservice_pickup_time_slot_by_end');
delete_site_option('byclaundryservice_pickup_time_slot_by_end');
delete_option('byclaundryservice_delivery_time_slot_by_start');
delete_site_option('byclaundryservice_delivery_time_slot_by_start');
delete_option('byclaundryservice_delivery_time_slot_by_end');
delete_site_option('byclaundryservice_delivery_time_slot_by_end');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('bycwclaundryservice_general_holiday');
delete_site_option('bycwclaundryservice_general_holiday');
delete_option('byconsolewoolaundry_free_plugin_activation_date');
delete_site_option('byconsolewoolaundry_free_plugin_activation_date');
delete_option('byconsolewooodt_free_plugin_activation_date');
delete_site_option('byconsolewooodt_free_plugin_activation_date');
delete_option('byclaundryservice_date_format');
delete_site_option('byclaundryservice_date_format');
delete_option('byconsolewoolaundry_free_plugin_admin_access_date');
delete_site_option('byconsolewoolaundry_free_plugin_admin_access_date');
delete_option('byclaundryservice_admin_national_holiday_date');
delete_site_option('byclaundryservice_admin_national_holiday_date');
delete_option('byclaundryservice_admin_casual_holiday_date');
delete_site_option('byclaundryservice_admin_casual_holiday_date');
delete_option('byclaundryservice_admin_national_holiday_delivery_date');
delete_site_option('byclaundryservice_admin_national_holiday_delivery_date');
delete_option('byclaundryservice_admin_casual_holiday_delivery_date');
delete_site_option('byclaundryservice_admin_casual_holiday_delivery_date');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'byconsolewclaundry_pickup_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'byconsolewclaundry_delivery_time' ) );

