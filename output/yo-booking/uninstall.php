<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yo_booking_customer_pending_appointment_settings');
delete_site_option('yo_booking_customer_pending_appointment_settings');
delete_option('yo_booking_company_name');
delete_site_option('yo_booking_company_name');
delete_option('yo_booking_company_address');
delete_site_option('yo_booking_company_address');
delete_option('yo_booking_company_phone');
delete_site_option('yo_booking_company_phone');
delete_option('yo_booking_company_email');
delete_site_option('yo_booking_company_email');
delete_option('yo_booking_company_website');
delete_site_option('yo_booking_company_website');
delete_option('yo_booking_email_footer_text');
delete_site_option('yo_booking_email_footer_text');
delete_option('yo_booking_company_logo');
delete_site_option('yo_booking_company_logo');
delete_option('yo_booking_appearance_base_color');
delete_site_option('yo_booking_appearance_base_color');
delete_option('yo_booking_appearance_text_color');
delete_site_option('yo_booking_appearance_text_color');
delete_option('yo_booking_email_from_name');
delete_site_option('yo_booking_email_from_name');
delete_option('yo_booking_email_from_address');
delete_site_option('yo_booking_email_from_address');
delete_option('yo_booking_customer_confirmed_appointment_settings');
delete_site_option('yo_booking_customer_confirmed_appointment_settings');
delete_option('yo_booking_customer_completed_appointment_settings');
delete_site_option('yo_booking_customer_completed_appointment_settings');
delete_option('yo_booking_customer_missed_appointment_settings');
delete_site_option('yo_booking_customer_missed_appointment_settings');
delete_option('yo_booking_customer_updated_appointment_settings');
delete_site_option('yo_booking_customer_updated_appointment_settings');
delete_option('yo_booking_customer_reminder_settings');
delete_site_option('yo_booking_customer_reminder_settings');
delete_option('yo_booking_new_appointment_settings');
delete_site_option('yo_booking_new_appointment_settings');
delete_option('yo_booking_cancelled_appointment_settings');
delete_site_option('yo_booking_cancelled_appointment_settings');
delete_option('yo_booking_missed_appointment_settings');
delete_site_option('yo_booking_missed_appointment_settings');
delete_option('yo_booking_appearance_highlight_color');
delete_site_option('yo_booking_appearance_highlight_color');
delete_option('yo_booking_business_hours');
delete_site_option('yo_booking_business_hours');
delete_option('yo_booking_country_availability');
delete_site_option('yo_booking_country_availability');
delete_option('yo_booking_specific_countries');
delete_site_option('yo_booking_specific_countries');
delete_option('yo_booking_time_slot_length');
delete_site_option('yo_booking_time_slot_length');
delete_option('yo_booking_booking_lead_time');
delete_site_option('yo_booking_booking_lead_time');
delete_option('yo_booking_booking_period_available');
delete_site_option('yo_booking_booking_period_available');
delete_option('yo_booking_default_status');
delete_site_option('yo_booking_default_status');
delete_option('yo_booking_minimum_cancellation_time');
delete_site_option('yo_booking_minimum_cancellation_time');
delete_option('yo_booking_required_contact');
delete_site_option('yo_booking_required_contact');
delete_option('yo_booking_service_category');
delete_site_option('yo_booking_service_category');
delete_option('yo_booking_staff_group');
delete_site_option('yo_booking_staff_group');
delete_option('yoohw_settings_disable_menu');
delete_site_option('yoohw_settings_disable_menu');
delete_option('yo_booking_premium_license_status');
delete_site_option('yo_booking_premium_license_status');
delete_option('yo_booking_version');
delete_site_option('yo_booking_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('yo_booking_customer_reminder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yo_booking_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yo_booking_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yo_booking_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yo_booking_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yo_booking_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yo_booking_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yo_booking_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yo_booking_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

