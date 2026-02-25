<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackfree_shipment_status_in_orders');
delete_site_option('trackfree_shipment_status_in_orders');
delete_option('trackfree_account_api_key');
delete_site_option('trackfree_account_api_key');
delete_option('trackfree_account_verify');
delete_site_option('trackfree_account_verify');
delete_option('trackfree_tracking_domain');
delete_site_option('trackfree_tracking_domain');
delete_option('trackfree_preferred_couriers');
delete_site_option('trackfree_preferred_couriers');
delete_option('trackfree_hide_quick_start_info');
delete_site_option('trackfree_hide_quick_start_info');
delete_option('trackfree_is_custom_track_url');
delete_site_option('trackfree_is_custom_track_url');
delete_option('trackfree_internal_email_link');
delete_site_option('trackfree_internal_email_link');
delete_option('trackfree_auto_order_status_update');
delete_site_option('trackfree_auto_order_status_update');
delete_option('trackfree_track_page_id');
delete_site_option('trackfree_track_page_id');
delete_option('trackfree_display_options');
delete_site_option('trackfree_display_options');
delete_option('trackfree_trans_strings');
delete_site_option('trackfree_trans_strings');
delete_option('trackfree_date_time_formats');
delete_site_option('trackfree_date_time_formats');
delete_option('trackfree_shipment_details_in_order_details');
delete_site_option('trackfree_shipment_details_in_order_details');
delete_option('trackfree_show_intransit_badge');
delete_site_option('trackfree_show_intransit_badge');
delete_option('trackfree_translate_strings');
delete_site_option('trackfree_translate_strings');
delete_option('trackfree_additional_texts');
delete_site_option('trackfree_additional_texts');
delete_option('trackfree_custom_css_and_html');
delete_site_option('trackfree_custom_css_and_html');
delete_option('trackfree_option_name');
delete_site_option('trackfree_option_name');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Delete Transients
delete_transient('trackfree_shipment_count');
delete_site_transient('trackfree_shipment_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_trackfree_shipment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_trackfree_shipment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_trackfree_shipment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_trackfree_shipment_details' ) );

