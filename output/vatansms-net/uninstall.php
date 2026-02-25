<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vatansms_api_id');
delete_site_option('vatansms_api_id');
delete_option('vatansms_api_key');
delete_site_option('vatansms_api_key');
delete_option('vatansms_is_login');
delete_site_option('vatansms_is_login');
delete_option('vatansms_sender');
delete_site_option('vatansms_sender');
delete_option('vatansms_fullname');
delete_site_option('vatansms_fullname');
delete_option('vatansms_kredit');
delete_site_option('vatansms_kredit');
delete_option('vatansms_wc_create_order_to_customer_status');
delete_site_option('vatansms_wc_create_order_to_customer_status');
delete_option('vatansms_wc_create_order_to_customer_message');
delete_site_option('vatansms_wc_create_order_to_customer_message');
delete_option('vatansms_wc_create_order_to_numbers_status');
delete_site_option('vatansms_wc_create_order_to_numbers_status');
delete_option('vatansms_wc_create_order_to_numbers');
delete_site_option('vatansms_wc_create_order_to_numbers');
delete_option('vatansms_wc_create_order_to_numbers_message');
delete_site_option('vatansms_wc_create_order_to_numbers_message');
delete_option('vatansms_wc_cancel_order_to_status');
delete_site_option('vatansms_wc_cancel_order_to_status');
delete_option('vatansms_wc_cancel_order_to_message');
delete_site_option('vatansms_wc_cancel_order_to_message');
delete_option('vatansms_wc_complete_order_to_status');
delete_site_option('vatansms_wc_complete_order_to_status');
delete_option('vatansms_wc_complete_order_to_message');
delete_site_option('vatansms_wc_complete_order_to_message');
delete_option('vatansms_wc_prepare_order_to_status');
delete_site_option('vatansms_wc_prepare_order_to_status');
delete_option('vatansms_wc_prepare_order_to_message');
delete_site_option('vatansms_wc_prepare_order_to_message');
delete_option('vatansms_wc_on_hold_order_to_status');
delete_site_option('vatansms_wc_on_hold_order_to_status');
delete_option('vatansms_wc_on_hold_order_to_message');
delete_site_option('vatansms_wc_on_hold_order_to_message');
delete_option('vatansms_contact_form_id');
delete_site_option('vatansms_contact_form_id');
delete_option('vatansms_auth_after_user_message_status');
delete_site_option('vatansms_auth_after_user_message_status');
delete_option('vatansms_auth_after_user_message');
delete_site_option('vatansms_auth_after_user_message');
delete_option('vatansms_auth_after_user_message_status_admin');
delete_site_option('vatansms_auth_after_user_message_status_admin');
delete_option('vatansms_auth_after_user_message_phone_admin');
delete_site_option('vatansms_auth_after_user_message_phone_admin');
delete_option('vatansms_auth_after_user_message_admin');
delete_site_option('vatansms_auth_after_user_message_admin');
delete_option('vatansms_contact_form_admin_to_status');
delete_site_option('vatansms_contact_form_admin_to_status');
delete_option('vatansms_contact_form_admin_to_numbers');
delete_site_option('vatansms_contact_form_admin_to_numbers');
delete_option('vatansms_contact_form_admin_to_message');
delete_site_option('vatansms_contact_form_admin_to_message');
delete_option('vatansms_contact_form_user_to_status');
delete_site_option('vatansms_contact_form_user_to_status');
delete_option('vatansms_contact_form_user_to_message');
delete_site_option('vatansms_contact_form_user_to_message');
delete_option('vatansms_wpforms_form_id');
delete_site_option('vatansms_wpforms_form_id');
delete_option('vatansms_wpforms_telephone_field_id');
delete_site_option('vatansms_wpforms_telephone_field_id');
delete_option('vatansms_wpforms_admin_to_status');
delete_site_option('vatansms_wpforms_admin_to_status');
delete_option('vatansms_wpforms_admin_to_numbers');
delete_site_option('vatansms_wpforms_admin_to_numbers');
delete_option('vatansms_wpforms_admin_to_message');
delete_site_option('vatansms_wpforms_admin_to_message');
delete_option('vatansms_wpforms_user_to_status');
delete_site_option('vatansms_wpforms_user_to_status');
delete_option('vatansms_wpforms_user_to_message');
delete_site_option('vatansms_wpforms_user_to_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_phone' ) );

