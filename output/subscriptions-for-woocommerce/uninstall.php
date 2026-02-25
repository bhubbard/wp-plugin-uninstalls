<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfw_radio_switch_demo');
delete_site_option('sfw_radio_switch_demo');
delete_option('wps_sfw_first_subscription_box_id');
delete_site_option('wps_sfw_first_subscription_box_id');
delete_option('wps_sfw_enable_plugin');
delete_site_option('wps_sfw_enable_plugin');
delete_option('wps_sfw_add_to_cart_text');
delete_site_option('wps_sfw_add_to_cart_text');
delete_option('wps_sfw_place_order_button_text');
delete_site_option('wps_sfw_place_order_button_text');
delete_option('wps_sfw_cancel_subscription_for_customer');
delete_site_option('wps_sfw_cancel_subscription_for_customer');
delete_option('wps_sfw_enable_subscription_log');
delete_site_option('wps_sfw_enable_subscription_log');
delete_option('wsp_api_secret_key');
delete_site_option('wsp_api_secret_key');
delete_option('wsp_enable_api_features');
delete_site_option('wsp_enable_api_features');
delete_option('wps_sfw_enable_tracking');
delete_site_option('wps_sfw_enable_tracking');
delete_option('wps_learnpress_course');
delete_site_option('wps_learnpress_course');
delete_option('wps_sfw_enable_plugin ');
delete_site_option('wps_sfw_enable_plugin ');
delete_option('wps_sfw_add_to_cart_text ');
delete_site_option('wps_sfw_add_to_cart_text ');
delete_option('wps_sfw_place_order_button_text ');
delete_site_option('wps_sfw_place_order_button_text ');
delete_option('wps_sfw_multistep_product_create_done');
delete_site_option('wps_sfw_multistep_product_create_done');
delete_option('woocommerce_wps_paypal_settings');
delete_site_option('woocommerce_wps_paypal_settings');
delete_option('wps_sfw_multistep_done');
delete_site_option('wps_sfw_multistep_done');
delete_option('wps_wgm_notify_new_banner_id');
delete_site_option('wps_wgm_notify_new_banner_id');
delete_option('wps_wgm_notify_new_banner_image');
delete_site_option('wps_wgm_notify_new_banner_image');
delete_option('wps_wgm_notify_new_banner_url');
delete_site_option('wps_wgm_notify_new_banner_url');
delete_option('wps_wgm_notify_hide_baneer_notification');
delete_site_option('wps_wgm_notify_hide_baneer_notification');
delete_option('wsp_enable_subscription_box_features');
delete_site_option('wsp_enable_subscription_box_features');
delete_option('wps_sfw_subscription_box_add_to_cart_text');
delete_site_option('wps_sfw_subscription_box_add_to_cart_text');
delete_option('wps_sfw_subscription_box_place_order_button_text');
delete_site_option('wps_sfw_subscription_box_place_order_button_text');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('wps_sfw_onboarding_data_skipped');
delete_site_option('wps_sfw_onboarding_data_skipped');
delete_option('wps_sfw_onboarding_data_sent');
delete_site_option('wps_sfw_onboarding_data_sent');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('wpswings_tracker_last_send');
delete_site_option('wpswings_tracker_last_send');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('wsp_allow_shipping_subscription');
delete_site_option('wsp_allow_shipping_subscription');
delete_option('woocommerce_paypal_settings');
delete_site_option('woocommerce_paypal_settings');
delete_option('woocommerce_ppec_paypal_settings');
delete_site_option('woocommerce_ppec_paypal_settings');
delete_option('audit_cybs_number');
delete_site_option('audit_cybs_number');
delete_option('mwb_wsp_license_key');
delete_site_option('mwb_wsp_license_key');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wps_all_plugins_active');
delete_site_option('wps_all_plugins_active');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('wps_wgm_check_for_notification_update');
wp_clear_scheduled_hook('wpswings_tracker_send_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_learnpress_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_learnpress_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_learnpress_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_learnpress_course' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_sfw_step_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_sfw_step_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_sfw_step_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_sfw_step_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_setup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_setup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_setup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_setup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_step_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_step_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_step_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_step_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_sfw_subscription_box_categories' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wps_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wps_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wps_paypal_subscription_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wps_paypal_subscription_id' ) );

