<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aff_status');
delete_site_option('aff_status');
delete_option('aff_pname');
delete_site_option('aff_pname');
delete_option('aff_user_registration_enabled');
delete_site_option('aff_user_registration_enabled');
delete_option('aff_customer_registration_enabled');
delete_site_option('aff_customer_registration_enabled');
delete_option('aff_user_registration_base_amount');
delete_site_option('aff_user_registration_base_amount');
delete_option('aff_user_registration_amount');
delete_site_option('aff_user_registration_amount');
delete_option('aff_user_registration_currency');
delete_site_option('aff_user_registration_currency');
delete_option('aff_user_registration_referral_status');
delete_site_option('aff_user_registration_referral_status');
delete_option('aff_default_referral_status');
delete_site_option('aff_default_referral_status');
delete_option('affiliates_notifications');
delete_site_option('affiliates_notifications');
delete_option('aff_notify_admin');
delete_site_option('aff_notify_admin');
delete_option('aff_setup_hide');
delete_site_option('aff_setup_hide');
delete_option('aff_allow_auto');
delete_site_option('aff_allow_auto');
delete_option('aff_allow_auto_coupons');
delete_site_option('aff_allow_auto_coupons');
delete_option('aff_notify_affiliate_user');
delete_site_option('aff_notify_affiliate_user');
delete_option('affiliates_plugin');
delete_site_option('affiliates_plugin');
delete_option('aff_registration');
delete_site_option('aff_registration');
delete_option('aff_registration_terms_post_id');
delete_site_option('aff_registration_terms_post_id');
delete_option('aff_use_direct');
delete_site_option('aff_use_direct');
delete_option('aff_redirect');
delete_site_option('aff_redirect');
delete_option('aff_id_encoding');
delete_site_option('aff_id_encoding');
delete_option('aff_delete_data');
delete_site_option('aff_delete_data');
delete_option('aff_delete_network_data');
delete_site_option('aff_delete_network_data');
delete_option('aff_cookie_timeout_days');
delete_site_option('aff_cookie_timeout_days');
delete_option('aff_duplicates');
delete_site_option('aff_duplicates');
delete_option('aff_registration_fields');
delete_site_option('aff_registration_fields');
delete_option('affiliates_plugin_version');
delete_site_option('affiliates_plugin_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('affiliates-init-time');
delete_site_option('affiliates-init-time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'affiliates-hide-review-notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'affiliates-hide-review-notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'affiliates-hide-review-notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'affiliates-hide-review-notice' ) );

