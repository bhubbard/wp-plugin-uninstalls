<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zetpy_ml_sms_provider');
delete_site_option('zetpy_ml_sms_provider');
delete_option('zetpy_ml_isms_username');
delete_site_option('zetpy_ml_isms_username');
delete_option('zetpy_ml_isms_password');
delete_site_option('zetpy_ml_isms_password');
delete_option('zetpy_ml_isms_sender_id');
delete_site_option('zetpy_ml_isms_sender_id');
delete_option('zetpy_ml_twilio_account_sid');
delete_site_option('zetpy_ml_twilio_account_sid');
delete_option('zetpy_ml_twilio_auth_token');
delete_site_option('zetpy_ml_twilio_auth_token');
delete_option('zetpy_ml_twilio_from_number');
delete_site_option('zetpy_ml_twilio_from_number');
delete_option('zetpy_ml_vonage_api_key');
delete_site_option('zetpy_ml_vonage_api_key');
delete_option('zetpy_ml_vonage_api_secret');
delete_site_option('zetpy_ml_vonage_api_secret');
delete_option('zetpy_ml_vonage_from');
delete_site_option('zetpy_ml_vonage_from');
delete_option('zetpy_ml_otp_expiry');
delete_site_option('zetpy_ml_otp_expiry');
delete_option('zetpy_ml_country_codes');
delete_site_option('zetpy_ml_country_codes');
delete_option('zetpy_ml_otp_secret_key');
delete_site_option('zetpy_ml_otp_secret_key');
delete_option('zetpy_ml_enable_math_captcha');
delete_site_option('zetpy_ml_enable_math_captcha');
delete_option('zetpy_ml_redirect_my_account');
delete_site_option('zetpy_ml_redirect_my_account');
delete_option('zetpy_ml_replace_checkout_login');
delete_site_option('zetpy_ml_replace_checkout_login');
delete_option('zetpy_ml_replace_checkout_registration');
delete_site_option('zetpy_ml_replace_checkout_registration');
delete_option('zetpy_ml_hide_password_fields');
delete_site_option('zetpy_ml_hide_password_fields');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('zetpy_ml_otp_method');
delete_site_option('zetpy_ml_otp_method');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_zetpy_ml_captcha_%', '_site_transient_zetpy_ml_captcha_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mobile_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mobile_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mobile_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mobile_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'profile_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'profile_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'profile_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'profile_completed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

