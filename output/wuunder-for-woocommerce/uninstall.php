<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_wuunder_google_maps_api_key');
delete_site_option('wc_wuunder_google_maps_api_key');
delete_option('wc_wuunder_api_status');
delete_site_option('wc_wuunder_api_status');
delete_option('woocommerce_wuunder_parcelshop_settings');
delete_site_option('woocommerce_wuunder_parcelshop_settings');
delete_option('default_carrier_list');
delete_site_option('default_carrier_list');
delete_option('wc_wuunder_mapping_method_1');
delete_site_option('wc_wuunder_mapping_method_1');
delete_option('wc_wuunder_mapping_filter_1');
delete_site_option('wc_wuunder_mapping_filter_1');
delete_option('wc_wuunder_mapping_method_2');
delete_site_option('wc_wuunder_mapping_method_2');
delete_option('wc_wuunder_mapping_filter_2');
delete_site_option('wc_wuunder_mapping_filter_2');
delete_option('wc_wuunder_mapping_method_3');
delete_site_option('wc_wuunder_mapping_method_3');
delete_option('wc_wuunder_mapping_filter_3');
delete_site_option('wc_wuunder_mapping_filter_3');
delete_option('wc_wuunder_mapping_method_4');
delete_site_option('wc_wuunder_mapping_method_4');
delete_option('wc_wuunder_mapping_filter_4');
delete_site_option('wc_wuunder_mapping_filter_4');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('wc_wuunder_api');
delete_site_option('wc_wuunder_api');
delete_option('wc_wuunder_test_api');
delete_site_option('wc_wuunder_test_api');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('wc_wuunder_default_image_base64');
delete_site_option('wc_wuunder_default_image_base64');
delete_option('wc_wuunder_company_email');
delete_site_option('wc_wuunder_company_email');
delete_option('wc_wuunder_company_lastname');
delete_site_option('wc_wuunder_company_lastname');
delete_option('wc_wuunder_company_firstname');
delete_site_option('wc_wuunder_company_firstname');
delete_option('wc_wuunder_company_city');
delete_site_option('wc_wuunder_company_city');
delete_option('wc_wuunder_company_street');
delete_site_option('wc_wuunder_company_street');
delete_option('wc_wuunder_company_housenumber');
delete_site_option('wc_wuunder_company_housenumber');
delete_option('wc_wuunder_company_postode');
delete_site_option('wc_wuunder_company_postode');
delete_option('wc_wuunder_company_phone');
delete_site_option('wc_wuunder_company_phone');
delete_option('wc_wuunder_company_country');
delete_site_option('wc_wuunder_company_country');
delete_option('wc_wuunder_company_name');
delete_site_option('wc_wuunder_company_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wuunder_label_booking_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wuunder_label_booking_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wuunder_label_booking_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wuunder_label_booking_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wuunder_label_booking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wuunder_label_booking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wuunder_label_booking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wuunder_label_booking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wuunder_label_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wuunder_label_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wuunder_label_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wuunder_label_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wuunder_label_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wuunder_label_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wuunder_label_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wuunder_label_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wuunder_track_and_trace_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wuunder_track_and_trace_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wuunder_track_and_trace_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wuunder_track_and_trace_url' ) );

