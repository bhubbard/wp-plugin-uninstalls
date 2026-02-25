<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('order_cancel_cancellation_approval');
delete_site_option('order_cancel_cancellation_approval');
delete_option('order_return_enable_return');
delete_site_option('order_return_enable_return');
delete_option('order_return_approval');
delete_site_option('order_return_approval');
delete_option('order_return_order_status');
delete_site_option('order_return_order_status');
delete_option('woocommerce_order_cancel_request_settings');
delete_site_option('woocommerce_order_cancel_request_settings');
delete_option('order_cancel_enable_cancellation');
delete_site_option('order_cancel_enable_cancellation');
delete_option('wc_order_splitter_premium_license_status');
delete_site_option('wc_order_splitter_premium_license_status');
delete_option('order_cancel_order_status');
delete_site_option('order_cancel_order_status');
delete_option('order_cancel_reasons');
delete_site_option('order_cancel_reasons');
delete_option('order_return_reasons');
delete_site_option('order_return_reasons');
delete_option('order_cancel_available_time');
delete_site_option('order_cancel_available_time');
delete_option('order_return_available_time');
delete_site_option('order_return_available_time');
delete_option('yoorc_customization_form_border');
delete_site_option('yoorc_customization_form_border');
delete_option('yoorc_customization_form_color');
delete_site_option('yoorc_customization_form_color');
delete_option('yoorc_customization_form_shadow');
delete_site_option('yoorc_customization_form_shadow');
delete_option('yoorc_customization_form_submit_button');
delete_site_option('yoorc_customization_form_submit_button');
delete_option('yoorc_customization_form_close_button');
delete_site_option('yoorc_customization_form_close_button');
delete_option('yoohw_settings_disable_menu');
delete_site_option('yoohw_settings_disable_menu');
delete_option('woocommerce_new_order_recipient');
delete_site_option('woocommerce_new_order_recipient');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wc_order_cancellation_return_version');
delete_site_option('wc_order_cancellation_return_version');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_cancel_return_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_cancel_return_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_cancel_return_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_cancel_return_activation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_cancel_return_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_cancel_return_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_cancel_return_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_cancel_return_never_show_again' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_advanced_order_manager_ads_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_advanced_order_manager_ads_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_advanced_order_manager_ads_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_advanced_order_manager_ads_time' ) );

