<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yoaa_wc_disable_email_on_registration');
delete_site_option('yoaa_wc_disable_email_on_registration');
delete_option('woocommerce_checkout_order_received_endpoint');
delete_site_option('woocommerce_checkout_order_received_endpoint');
delete_option('woocommerce_myaccount_view_order_endpoint');
delete_site_option('woocommerce_myaccount_view_order_endpoint');
delete_option('yoaa_wc_enable_email_verification');
delete_site_option('yoaa_wc_enable_email_verification');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('yoaa_wc_enable_phone_number_account');
delete_site_option('yoaa_wc_enable_phone_number_account');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('yoaa_wc_enable_phone_login_with_otp');
delete_site_option('yoaa_wc_enable_phone_login_with_otp');
delete_option('woocommerce_specific_allowed_countries');
delete_site_option('woocommerce_specific_allowed_countries');
delete_option('yoohw_phone_verification_sms_key');
delete_site_option('yoohw_phone_verification_sms_key');
delete_option('yoaa_wc_phone_verification_message');
delete_site_option('yoaa_wc_phone_verification_message');
delete_option('woocommerce_allowed_countries');
delete_site_option('woocommerce_allowed_countries');
delete_option('woocommerce_all_except_countries');
delete_site_option('woocommerce_all_except_countries');
delete_option('wc_blacklist_manager_premium_license_status');
delete_site_option('wc_blacklist_manager_premium_license_status');
delete_option('yoaa_wc_enable_phone_verification');
delete_site_option('yoaa_wc_enable_phone_verification');
delete_option('yoaa_wc_phone_verification_resend');
delete_site_option('yoaa_wc_phone_verification_resend');
delete_option('yoaa_wc_phone_verification_code_length');
delete_site_option('yoaa_wc_phone_verification_code_length');
delete_option('yoaa_wc_phone_verification_resend_time');
delete_site_option('yoaa_wc_phone_verification_resend_time');
delete_option('yoaa_wc_redirect_wp_login');
delete_site_option('yoaa_wc_redirect_wp_login');
delete_option('yoaa_account_endpoints_order');
delete_site_option('yoaa_account_endpoints_order');
delete_option('yoaa_account_endpoints_titles');
delete_site_option('yoaa_account_endpoints_titles');
delete_option('yoaa_account_endpoints_slugs');
delete_site_option('yoaa_account_endpoints_slugs');
delete_option('yoaa_account_endpoints_icons');
delete_site_option('yoaa_account_endpoints_icons');
delete_option('yoaa_account_endpoints_manual_order');
delete_site_option('yoaa_account_endpoints_manual_order');
delete_option('yoaa_account_endpoints_visible');
delete_site_option('yoaa_account_endpoints_visible');
delete_option('yoohw_phone_verification_sms_quota');
delete_site_option('yoohw_phone_verification_sms_quota');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('yoohw_settings_disable_menu');
delete_site_option('yoohw_settings_disable_menu');
delete_option('woocommerce_new_order_recipient');
delete_site_option('woocommerce_new_order_recipient');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wc_order_splitter_version');
delete_site_option('wc_order_splitter_version');
delete_option('yoaa_account_endpoint_icon_position');
delete_site_option('yoaa_account_endpoint_icon_position');
delete_option('woocommerce_enable_checkout_login_reminder');
delete_site_option('woocommerce_enable_checkout_login_reminder');

// Delete Transients
delete_transient('email_verification_error');
delete_site_transient('email_verification_error');
delete_transient('account_activated_success');
delete_site_transient('account_activated_success');
delete_transient('yoaa_account_activated_success');
delete_site_transient('yoaa_account_activated_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'temporary_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'temporary_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'temporary_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'temporary_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_create_account_during_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_create_account_during_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_create_account_during_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_create_account_during_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email_verification_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email_verification_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email_verification_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email_verification_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone_verification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wcaa_advabced_account_settings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wcaa_advabced_account_settings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wcaa_advabced_account_settings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wcaa_advabced_account_settings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_advanced_accounts_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_advanced_accounts_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_advanced_accounts_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_advanced_accounts_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_advanced_accounts_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_advanced_accounts_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_advanced_accounts_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_advanced_accounts_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blacklist_manager_premium_ads_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blacklist_manager_premium_ads_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blacklist_manager_premium_ads_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blacklist_manager_premium_ads_time' ) );

