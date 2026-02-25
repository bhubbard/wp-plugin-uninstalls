<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('byconsolewooptt_delivery_holiday_sunday_check');
delete_site_option('byconsolewooptt_delivery_holiday_sunday_check');
delete_option('byconsolewooptt_delivery_holiday_saturday_check');
delete_site_option('byconsolewooptt_delivery_holiday_saturday_check');
delete_option('byconsolewooptt_delivery_end_time');
delete_site_option('byconsolewooptt_delivery_end_time');
delete_option('bycproductavailabilit_no_of_days_open_in_calender');
delete_site_option('bycproductavailabilit_no_of_days_open_in_calender');
delete_option('byconsolewooptt_delivery_start_time');
delete_site_option('byconsolewooptt_delivery_start_time');
delete_option('byconsolewooptt_delivery_time_duration');
delete_site_option('byconsolewooptt_delivery_time_duration');
delete_option('byconsolewooptt_product_button_text');
delete_site_option('byconsolewooptt_product_button_text');
delete_option('byconsolewooptt_no_of_days_open_in_calender');
delete_site_option('byconsolewooptt_no_of_days_open_in_calender');
delete_option('byconsolewooptt_product_sameday_cutoff_lable');
delete_site_option('byconsolewooptt_product_sameday_cutoff_lable');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'byc_enable_for_functions_working' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'byc_enable_for_functions_working' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'byc_enable_for_functions_working' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'byc_enable_for_functions_working' ) );

