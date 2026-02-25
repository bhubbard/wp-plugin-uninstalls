<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f152_enabled');
delete_site_option('f152_enabled');
delete_option('f152_banner_text');
delete_site_option('f152_banner_text');
delete_option('f152_site_url');
delete_site_option('f152_site_url');
delete_option('f152_company_name');
delete_site_option('f152_company_name');
delete_option('f152_company_inn');
delete_site_option('f152_company_inn');
delete_option('f152_company_email');
delete_site_option('f152_company_email');
delete_option('f152_ym_counter');
delete_site_option('f152_ym_counter');
delete_option('f152_popup_upper');
delete_site_option('f152_popup_upper');
delete_option('f152_popup_func');
delete_site_option('f152_popup_func');
delete_option('f152_popup_anal');
delete_site_option('f152_popup_anal');
delete_option('f152_popup_mark');
delete_site_option('f152_popup_mark');
delete_option('f152_link_policy_pd');
delete_site_option('f152_link_policy_pd');
delete_option('f152_link_consent_pd');
delete_site_option('f152_link_consent_pd');
delete_option('f152_link_policy_cookie');
delete_site_option('f152_link_policy_cookie');
delete_option('f152_link_consent_marketing');
delete_site_option('f152_link_consent_marketing');
delete_option('f152_comment_enable');
delete_site_option('f152_comment_enable');
delete_option('f152_comment_text');
delete_site_option('f152_comment_text');
delete_option('f152_reviews_enable');
delete_site_option('f152_reviews_enable');
delete_option('f152_reviews_text');
delete_site_option('f152_reviews_text');
delete_option('f152_checkout_enable');
delete_site_option('f152_checkout_enable');
delete_option('f152_checkout_text');
delete_site_option('f152_checkout_text');
delete_option('f152_cookie_domain');
delete_site_option('f152_cookie_domain');
delete_option('f152_theme');
delete_site_option('f152_theme');
delete_option('f152_color_bg');
delete_site_option('f152_color_bg');
delete_option('f152_color_text');
delete_site_option('f152_color_text');
delete_option('f152_color_link');
delete_site_option('f152_color_link');
delete_option('f152_color_btn_bg');
delete_site_option('f152_color_btn_bg');
delete_option('f152_color_btn_text');
delete_site_option('f152_color_btn_text');
delete_option('f152_btn_settings_view');
delete_site_option('f152_btn_settings_view');
delete_option('f152_seed_main_defaults_done');
delete_site_option('f152_seed_main_defaults_done');
delete_option('f152_btn_radius');
delete_site_option('f152_btn_radius');
delete_option('f152_color_btn_accept_bg');
delete_site_option('f152_color_btn_accept_bg');
delete_option('f152_color_btn_accept_text');
delete_site_option('f152_color_btn_accept_text');
delete_option('f152_color_btn_settings_bg');
delete_site_option('f152_color_btn_settings_bg');
delete_option('f152_color_btn_settings_text');
delete_site_option('f152_color_btn_settings_text');
delete_option('f152_color_btn_reject_bg');
delete_site_option('f152_color_btn_reject_bg');
delete_option('f152_color_btn_reject_text');
delete_site_option('f152_color_btn_reject_text');
delete_option('f152_ym_behavior');
delete_site_option('f152_ym_behavior');
delete_option('f152_ym_disable_on_reject');
delete_site_option('f152_ym_disable_on_reject');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_f152_consent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_f152_consent' ) );

