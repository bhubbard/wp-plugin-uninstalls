<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('password_mismatch');
delete_site_option('password_mismatch');
delete_option('default_country_code');
delete_site_option('default_country_code');
delete_option('mo_form_sms_notification_settings');
delete_site_option('mo_form_sms_notification_settings');
delete_option('mowc_sms_notification_settings');
delete_site_option('mowc_sms_notification_settings');
delete_option('mo_wc_customer_validation_admin_email');
delete_site_option('mo_wc_customer_validation_admin_email');
delete_option('mo_wc_customer_validation_company_name');
delete_site_option('mo_wc_customer_validation_company_name');
delete_option('mo_wc_customer_validation_first_name');
delete_site_option('mo_wc_customer_validation_first_name');
delete_option('mo_wc_customer_validation_last_name');
delete_site_option('mo_wc_customer_validation_last_name');
delete_option('mo_wc_customer_validation_wc_default_enable');
delete_site_option('mo_wc_customer_validation_wc_default_enable');
delete_option('mo_wc_customer_validation_wc_enable_type');
delete_site_option('mo_wc_customer_validation_wc_enable_type');
delete_option('mo_wc_customer_validation_wc_social_login_enable');
delete_site_option('mo_wc_customer_validation_wc_social_login_enable');
delete_option('mo_wc_customer_validation_wc_checkout_enable');
delete_site_option('mo_wc_customer_validation_wc_checkout_enable');
delete_option('mo_wc_customer_validation_wc_checkout_type');
delete_site_option('mo_wc_customer_validation_wc_checkout_type');
delete_option('mo_wc_customer_validation_wc_redirect');
delete_site_option('mo_wc_customer_validation_wc_redirect');
delete_option('mo_wc_customer_validation_wc_checkout_button');
delete_site_option('mo_wc_customer_validation_wc_checkout_button');
delete_option('mo_wc_customer_validation_wc_checkout_guest');
delete_site_option('mo_wc_customer_validation_wc_checkout_guest');
delete_option('mo_wc_customer_validation_check_ln');
delete_site_option('mo_wc_customer_validation_check_ln');
delete_option('mo_wc_customer_validation_wp_login_enable');
delete_site_option('mo_wc_customer_validation_wp_login_enable');
delete_option('mo_wc_customer_validation_wp_login_register_phone');
delete_site_option('mo_wc_customer_validation_wp_login_register_phone');
delete_option('mo_wc_customer_validation_wp_login_bypass_admin');
delete_site_option('mo_wc_customer_validation_wp_login_bypass_admin');
delete_option('mo_wc_customer_validation_wp_login_key');
delete_site_option('mo_wc_customer_validation_wp_login_key');
delete_option('mo_wc_customer_validation_wp_member_reg_enable');
delete_site_option('mo_wc_customer_validation_wp_member_reg_enable');
delete_option('mo_wc_customer_validation_wp_member_reg_enable_type');
delete_site_option('mo_wc_customer_validation_wp_member_reg_enable_type');
delete_option('mo_wc_customer_validation_default_country_code');
delete_site_option('mo_wc_customer_validation_default_country_code');
delete_option('mo_wc_customer_validation_wc_checkout_popup');
delete_site_option('mo_wc_customer_validation_wc_checkout_popup');
delete_option('mo_wc_customer_validation_wp_login_allow_phone_login');
delete_site_option('mo_wc_customer_validation_wp_login_allow_phone_login');
delete_option('mo_wc_customer_validation_wp_login_restrict_duplicates');
delete_site_option('mo_wc_customer_validation_wp_login_restrict_duplicates');
delete_option('mo_wc_customer_validation_blocked_domains');
delete_site_option('mo_wc_customer_validation_blocked_domains');
delete_option('mo_wc_customer_validation_blocked_phone_numbers');
delete_site_option('mo_wc_customer_validation_blocked_phone_numbers');
delete_option('mo_wc_customer_validation_wp_reg_restrict_duplicates');
delete_site_option('mo_wc_customer_validation_wp_reg_restrict_duplicates');
delete_option('mo_wc_customer_validation_show_remaining_trans');
delete_site_option('mo_wc_customer_validation_show_remaining_trans');
delete_option('mo_wc_customer_validation_show_dropdown_on_form');
delete_site_option('mo_wc_customer_validation_show_dropdown_on_form');
delete_option('mo_wc_customer_validation_email_verification_lk');
delete_site_option('mo_wc_customer_validation_email_verification_lk');
delete_option('mo_wc_customer_validation_site_email_ckl');
delete_site_option('mo_wc_customer_validation_site_email_ckl');
delete_option('mo_wc_customer_validation_wc_checkout_payment_type');
delete_site_option('mo_wc_customer_validation_wc_checkout_payment_type');
delete_option('mo_wc_customer_validation_otp_length');
delete_site_option('mo_wc_customer_validation_otp_length');
delete_option('mo_wc_customer_validation_otp_validity');
delete_site_option('mo_wc_customer_validation_otp_validity');
delete_option('mo_wc_customer_validation_generate_alphanumeric_otp');
delete_site_option('mo_wc_customer_validation_generate_alphanumeric_otp');
delete_option('mo_wc_customer_validation_globally_banned_phone');
delete_site_option('mo_wc_customer_validation_globally_banned_phone');
delete_option('mo_wc_customer_validation_masterotp_validity');
delete_site_option('mo_wc_customer_validation_masterotp_validity');
delete_option('mo_wc_customer_validation_masterotp_admin');
delete_site_option('mo_wc_customer_validation_masterotp_admin');
delete_option('mo_wc_customer_validation_masterotp_user');
delete_site_option('mo_wc_customer_validation_masterotp_user');
delete_option('mo_wc_customer_validation_masterotp_admins');
delete_site_option('mo_wc_customer_validation_masterotp_admins');
delete_option('mo_wc_customer_validation_masterotp_specific_user');
delete_site_option('mo_wc_customer_validation_masterotp_specific_user');
delete_option('mo_wc_customer_validation_masterotp_specific_user_details');
delete_site_option('mo_wc_customer_validation_masterotp_specific_user_details');
delete_option('mo_wc_customer_validation_wc_checkout_selective_payment');
delete_site_option('mo_wc_customer_validation_wc_checkout_selective_payment');
delete_option('mo_wc_customer_validation_custom_popups');
delete_site_option('mo_wc_customer_validation_custom_popups');
delete_option('mo_wc_customer_validation_wc_checkout_button_link_text');
delete_site_option('mo_wc_customer_validation_wc_checkout_button_link_text');
delete_option('mo_wc_customer_validation_wc_billing_enable');
delete_site_option('mo_wc_customer_validation_wc_billing_enable');
delete_option('mo_wc_customer_validation_wc_billing_type_enabled');
delete_site_option('mo_wc_customer_validation_wc_billing_type_enabled');
delete_option('mo_wc_customer_validation_wc_billing_restrict_duplicates');
delete_site_option('mo_wc_customer_validation_wc_billing_restrict_duplicates');
delete_option('mo_wc_customer_validation_wc_checkout_restrict_duplicates');
delete_site_option('mo_wc_customer_validation_wc_checkout_restrict_duplicates');
delete_option('mo_wc_customer_validation_wc_checkout_disable_auto_login');
delete_site_option('mo_wc_customer_validation_wc_checkout_disable_auto_login');
delete_option('mo_wc_otp_success_email_message');
delete_site_option('mo_wc_otp_success_email_message');
delete_option('mo_wc_otp_success_phone_message');
delete_site_option('mo_wc_otp_success_phone_message');
delete_option('mo_wc_otp_error_phone_message');
delete_site_option('mo_wc_otp_error_phone_message');
delete_option('mo_wc_otp_error_email_message');
delete_site_option('mo_wc_otp_error_email_message');
delete_option('mo_wc_otp_invalid_phone_message');
delete_site_option('mo_wc_otp_invalid_phone_message');
delete_option('mo_wc_otp_invalid_email_message');
delete_site_option('mo_wc_otp_invalid_email_message');
delete_option('mo_wc_otp_blocked_phone_message');
delete_site_option('mo_wc_otp_blocked_phone_message');
delete_option('mo_wc_otp_blocked_email_message');
delete_site_option('mo_wc_otp_blocked_email_message');
delete_option('mo_wc_otp_invalid_message');
delete_site_option('mo_wc_otp_invalid_message');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wcsl_%', '_site_transient_wcsl_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('hourlySync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enter_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enter_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enter_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enter_otp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'telephone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'telephone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'telephone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'telephone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_login_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_login_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_login_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_login_timestamp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_login_timestamp_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_login_timestamp_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_login_timestamp_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_login_timestamp_gmt' ) );

