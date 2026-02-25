<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_ddwcaf_affiliate_registration_fields');
delete_site_option('_ddwcaf_affiliate_registration_fields');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('_ddwcaf_enabled');
delete_site_option('_ddwcaf_enabled');
delete_option('_ddwcaf_user_roles');
delete_site_option('_ddwcaf_user_roles');
delete_option('_ddwcaf_fields_enabled_on_woocommerce_registration');
delete_site_option('_ddwcaf_fields_enabled_on_woocommerce_registration');
delete_option('_ddwcaf_affiliate_dashboard_page_id');
delete_site_option('_ddwcaf_affiliate_dashboard_page_id');
delete_option('_ddwcaf_enable_widgets_affiliate_dashboard_page');
delete_site_option('_ddwcaf_enable_widgets_affiliate_dashboard_page');
delete_option('_ddwcaf_primary_color');
delete_site_option('_ddwcaf_primary_color');
delete_option('_ddwcaf_default_affiliate_dashboard_page');
delete_site_option('_ddwcaf_default_affiliate_dashboard_page');
delete_option('_ddwcaf_my_account_enabled');
delete_site_option('_ddwcaf_my_account_enabled');
delete_option('_ddwcaf_enable_widgets_my_account_endpoint');
delete_site_option('_ddwcaf_enable_widgets_my_account_endpoint');
delete_option('_ddwcaf_query_variable_name');
delete_site_option('_ddwcaf_query_variable_name');
delete_option('_ddwcaf_referral_cookie_name');
delete_site_option('_ddwcaf_referral_cookie_name');
delete_option('_ddwcaf_referral_cookie_expires');
delete_site_option('_ddwcaf_referral_cookie_expires');
delete_option('_ddwcaf_register_visits_enabled');
delete_site_option('_ddwcaf_register_visits_enabled');
delete_option('_ddwcaf_referral_social_share_options');
delete_site_option('_ddwcaf_referral_social_share_options');
delete_option('_ddwcaf_social_share_title');
delete_site_option('_ddwcaf_social_share_title');
delete_option('_ddwcaf_social_share_text');
delete_site_option('_ddwcaf_social_share_text');
delete_option('_ddwcaf_pinterest_image_url');
delete_site_option('_ddwcaf_pinterest_image_url');
delete_option('_ddwcaf_default_commission_rate');
delete_site_option('_ddwcaf_default_commission_rate');
delete_option('_ddwcaf_exclude_taxes_enabled');
delete_site_option('_ddwcaf_exclude_taxes_enabled');
delete_option('_ddwcaf_exclude_discounts_enabled');
delete_site_option('_ddwcaf_exclude_discounts_enabled');
delete_option('_ddwcaf_withdrawal_methods');
delete_site_option('_ddwcaf_withdrawal_methods');
delete_option('_ddwcaf_affiliate_registration_form_shortcode');
delete_site_option('_ddwcaf_affiliate_registration_form_shortcode');
delete_option('_ddwcaf_affiliate_registration_form_shortcode_content');
delete_site_option('_ddwcaf_affiliate_registration_form_shortcode_content');
delete_option('_ddwcaf_affiliate_dashboard_shortcode');
delete_site_option('_ddwcaf_affiliate_dashboard_shortcode');
delete_option('woocommerce_logout_endpoint');
delete_site_option('woocommerce_logout_endpoint');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ddwcaf_affiliate_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_info_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ddwcaf_affiliate_info_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_info_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_info_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_withdrawal_methods' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ddwcaf_affiliate_withdrawal_methods' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_withdrawal_methods' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_withdrawal_methods' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_default_withdrawal_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ddwcaf_affiliate_default_withdrawal_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_default_withdrawal_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ddwcaf_affiliate_default_withdrawal_method' ) );

