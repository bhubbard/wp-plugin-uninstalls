<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('en_connection_settings_suspend_distance_base_shipping');
delete_site_option('en_connection_settings_suspend_distance_base_shipping');
delete_option('en_general_profile_condition');
delete_site_option('en_general_profile_condition');
delete_option('en_connection_settings_license_key_distance_base_shipping');
delete_site_option('en_connection_settings_license_key_distance_base_shipping');
delete_option('EN_Plugins');
delete_site_option('EN_Plugins');
delete_option('EN_DISTANCE_BASE_SHIPPING_carriers');
delete_site_option('EN_DISTANCE_BASE_SHIPPING_carriers');
delete_option('en_trial_dbsc_flag');
delete_site_option('en_trial_dbsc_flag');
delete_option('subscription_packages_response');
delete_site_option('subscription_packages_response');
delete_option('en_fdo_company_id');
delete_site_option('en_fdo_company_id');
delete_option('en_fdo_company_id_status');
delete_site_option('en_fdo_company_id_status');
delete_option('EN_DISTANCE_BASE_SHIPPING_plan_number');
delete_site_option('EN_DISTANCE_BASE_SHIPPING_plan_number');
delete_option('EN_DISTANCE_BASE_SHIPPING_plan_message');
delete_site_option('EN_DISTANCE_BASE_SHIPPING_plan_message');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('en_quote_settings_allow_other_plugins_distance_base_shipping');
delete_site_option('en_quote_settings_allow_other_plugins_distance_base_shipping');
delete_option('en_dbsc_package_scac');
delete_site_option('en_dbsc_package_scac');
delete_option('en_settings_how_to_handle_multi_shipment_distance_base_shipping');
delete_site_option('en_settings_how_to_handle_multi_shipment_distance_base_shipping');
delete_option('en_connection_settings_multi_shipment_label_distance_base_shipping');
delete_site_option('en_connection_settings_multi_shipment_label_distance_base_shipping');
delete_option('en_settings_distance_based_multi_ship_profile_include');
delete_site_option('en_settings_distance_based_multi_ship_profile_include');
delete_option('en_settings_distance_based_multi_ship_profile_exclude');
delete_site_option('en_settings_distance_based_multi_ship_profile_exclude');
delete_option('en_orders_ids_flag');
delete_site_option('en_orders_ids_flag');
delete_option('en_async_orders_exporting_process');
delete_site_option('en_async_orders_exporting_process');
delete_option('en_orders_ids');
delete_site_option('en_orders_ids');
delete_option('en_quote_settings_rating_method_distance_base_shipping');
delete_site_option('en_quote_settings_rating_method_distance_base_shipping');
delete_option('en_quote_settings_custom_label_distance_base_shipping');
delete_site_option('en_quote_settings_custom_label_distance_base_shipping');
delete_option('en_quote_settings_show_delivery_estimate_distance_base_shipping');
delete_site_option('en_quote_settings_show_delivery_estimate_distance_base_shipping');
delete_option('en_quote_settings_own_arrangment_distance_base_shipping');
delete_site_option('en_quote_settings_own_arrangment_distance_base_shipping');
delete_option('en_quote_settings_text_for_own_arrangment_distance_base_shipping');
delete_site_option('en_quote_settings_text_for_own_arrangment_distance_base_shipping');
delete_option('en_quote_settings_number_of_options_distance_base_shipping');
delete_site_option('en_quote_settings_number_of_options_distance_base_shipping');
delete_option('en_quote_settings_handling_unit_weight_distance_base_shipping');
delete_site_option('en_quote_settings_handling_unit_weight_distance_base_shipping');
delete_option('en_quote_settings_handling_fee_distance_base_shipping');
delete_site_option('en_quote_settings_handling_fee_distance_base_shipping');
delete_option('en_quote_settings_liftgate_delivery_distance_base_shipping');
delete_site_option('en_quote_settings_liftgate_delivery_distance_base_shipping');
delete_option('distance_base_shipping_liftgate_delivery_as_option');
delete_site_option('distance_base_shipping_liftgate_delivery_as_option');
delete_option('en_quote_settings_residential_delivery_distance_base_shipping');
delete_site_option('en_quote_settings_residential_delivery_distance_base_shipping');
delete_option('en_woo_addons_liftgate_with_auto_residential');
delete_site_option('en_woo_addons_liftgate_with_auto_residential');
delete_option('en_quote_settings_checkout_error_message_distance_base_shipping');
delete_site_option('en_quote_settings_checkout_error_message_distance_base_shipping');
delete_option('en_quote_settings_option_select_when_unable_retrieve_shipping_distance_base_shipping');
delete_site_option('en_quote_settings_option_select_when_unable_retrieve_shipping_distance_base_shipping');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('en_settings_error_management_not_in_profile_distance_base_shipping');
delete_site_option('en_settings_error_management_not_in_profile_distance_base_shipping');

// Clear Cron Jobs
wp_clear_scheduled_hook('en_async_orders_exporting_process');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'en_woocommerce_thankyou_done' ) );

