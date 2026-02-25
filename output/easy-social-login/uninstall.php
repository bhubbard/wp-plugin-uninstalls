<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eslp_easy_social_login_woocommerce_checkout');
delete_site_option('eslp_easy_social_login_woocommerce_checkout');
delete_option('eslp_easy_social_login_settings');
delete_site_option('eslp_easy_social_login_settings');
delete_option('eslp_easy_social_login_user_role');
delete_site_option('eslp_easy_social_login_user_role');
delete_option('eslp_easy_social_login_notify_admin');
delete_site_option('eslp_easy_social_login_notify_admin');
delete_option('eslp_easy_social_login_redirect_url');
delete_site_option('eslp_easy_social_login_redirect_url');
delete_option('eslp_easy_social_login_display_header_message');
delete_site_option('eslp_easy_social_login_display_header_message');
delete_option('eslp_easy_social_login_display_button_login');
delete_site_option('eslp_easy_social_login_display_button_login');
delete_option('eslp_easy_social_login_display_button_register');
delete_site_option('eslp_easy_social_login_display_button_register');
delete_option('eslp_easy_social_login_button_position');
delete_site_option('eslp_easy_social_login_button_position');
delete_option('eslp_easy_social_login_woocommerce_login');
delete_site_option('eslp_easy_social_login_woocommerce_login');
delete_option('eslp_easy_social_login_woocommerce_register');
delete_site_option('eslp_easy_social_login_woocommerce_register');
delete_option('eslp_hide_donate_time');
delete_site_option('eslp_hide_donate_time');
delete_option('eslp_last_hide');
delete_site_option('eslp_last_hide');
delete_option('eslp_database_version');
delete_site_option('eslp_database_version');
delete_option('woocommerce_enable_myaccount_registration');
delete_site_option('woocommerce_enable_myaccount_registration');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('eslp_facebook_enabled');
delete_site_option('eslp_facebook_enabled');
delete_option('eslp_facebook_app_id');
delete_site_option('eslp_facebook_app_id');
delete_option('eslp_facebook_app_secret');
delete_site_option('eslp_facebook_app_secret');
delete_option('eslp_facebook_oauth_redirect_uri');
delete_site_option('eslp_facebook_oauth_redirect_uri');
delete_option('eslp_facebook_locale');
delete_site_option('eslp_facebook_locale');
delete_option('eslp_google_client_id');
delete_site_option('eslp_google_client_id');
delete_option('eslp_google_redirect_uri');
delete_site_option('eslp_google_redirect_uri');
delete_option('eslp_google_enabled');
delete_site_option('eslp_google_enabled');
delete_option('eslp_google_client_secret');
delete_site_option('eslp_google_client_secret');
delete_option('eslp_windowslive_enabled');
delete_site_option('eslp_windowslive_enabled');
delete_option('eslp_windows_live_client_id');
delete_site_option('eslp_windows_live_client_id');
delete_option('eslp_windows_live_client_secret');
delete_site_option('eslp_windows_live_client_secret');
delete_option('eslp_windowslive_oauth_redirect_uri');
delete_site_option('eslp_windowslive_oauth_redirect_uri');
delete_option('eslp_social_login_user_role');
delete_site_option('eslp_social_login_user_role');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eslp_facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eslp_facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eslp_facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eslp_facebook_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eslp_google_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eslp_google_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eslp_google_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eslp_google_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eslp_microsoft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eslp_microsoft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eslp_microsoft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eslp_microsoft_id' ) );

