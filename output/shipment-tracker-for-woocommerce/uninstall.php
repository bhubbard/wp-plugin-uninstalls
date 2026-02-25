<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bt_sst_activated_time');
delete_site_option('_bt_sst_activated_time');
delete_option('_bt_sst_shiprocket_active_courier_companies');
delete_site_option('_bt_sst_shiprocket_active_courier_companies');
delete_option('bt_sst_order_and_shipp_status_keys_array');
delete_site_option('bt_sst_order_and_shipp_status_keys_array');
delete_option('register_for_sms_apy_key');
delete_site_option('register_for_sms_apy_key');
delete_option('bt_sst_check_skip_or_not');
delete_site_option('bt_sst_check_skip_or_not');
delete_option('bt_sst_shipment_status_mode_map');
delete_site_option('bt_sst_shipment_status_mode_map');
delete_option('bt_sst_manual_coriures_names_array');
delete_site_option('bt_sst_manual_coriures_names_array');
delete_option('bt_sst_order_status_list');
delete_site_option('bt_sst_order_status_list');
delete_option('bt_sst_timer_settings');
delete_site_option('bt_sst_timer_settings');
delete_option('_bt_sst_shiprocket_pincode_checker');
delete_site_option('_bt_sst_shiprocket_pincode_checker');
delete_option('_bt_sst_tracking_page');
delete_site_option('_bt_sst_tracking_page');
delete_option('_bt_sst_default_shipping_provider');
delete_site_option('_bt_sst_default_shipping_provider');
delete_option('_bt_sst_enable_auto_postcode_fill');
delete_site_option('_bt_sst_enable_auto_postcode_fill');
delete_option('_bt_sst_show_shipment_weight');
delete_site_option('_bt_sst_show_shipment_weight');
delete_option('_bt_sst_select_courier_company');
delete_site_option('_bt_sst_select_courier_company');
delete_option('_bt_sst_generic_google_key');
delete_site_option('_bt_sst_generic_google_key');
delete_option('product_url_etd');
delete_site_option('product_url_etd');
delete_option('bt_sst_is_premium');
delete_site_option('bt_sst_is_premium');
delete_option('_bt_sst_ship24_active_courier_companies');
delete_site_option('_bt_sst_ship24_active_courier_companies');
delete_option('bt_sst_product_page_pincode_checker_logs');
delete_site_option('bt_sst_product_page_pincode_checker_logs');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('bt_sst_premium_grace_start_time');
delete_site_option('bt_sst_premium_grace_start_time');
delete_option('bt-sync-shipment-tracking-random-route');
delete_site_option('bt-sync-shipment-tracking-random-route');
delete_option('bt-sync-shipment-tracking-random-secret-key');
delete_site_option('bt-sync-shipment-tracking-random-secret-key');
delete_option('bt-sync-shipment-tracking-random-manual-secret-key');
delete_site_option('bt-sync-shipment-tracking-random-manual-secret-key');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('shiprocket_webhook_called');
delete_site_option('shiprocket_webhook_called');
delete_option('nimbuspost_webhook_called');
delete_site_option('nimbuspost_webhook_called');
delete_option('nimbuspost_new_webhook_called');
delete_site_option('nimbuspost_new_webhook_called');
delete_option('xpressbees_webhook_called');
delete_site_option('xpressbees_webhook_called');
delete_option('shipmozo_webhook_called');
delete_site_option('shipmozo_webhook_called');
delete_option('delhivery_webhook_called');
delete_site_option('delhivery_webhook_called');
delete_option('ekart_webhook_called');
delete_site_option('ekart_webhook_called');
delete_option('courierkaro_webhook_called');
delete_site_option('courierkaro_webhook_called');
delete_option('proship_webhook_called');
delete_site_option('proship_webhook_called');
delete_option('ship24_webhook_called');
delete_site_option('ship24_webhook_called');
delete_option('generated_access_token_object');
delete_site_option('generated_access_token_object');
delete_option('bt_ekart_seller_gst');
delete_site_option('bt_ekart_seller_gst');
delete_option('_bt_sst_shiprocket_apiusername');
delete_site_option('_bt_sst_shiprocket_apiusername');
delete_option('_bt_sst_shiprocket_apipassword');
delete_site_option('_bt_sst_shiprocket_apipassword');
delete_option('_bt_sst_shiprocket_channelid');
delete_site_option('_bt_sst_shiprocket_channelid');
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');

// Delete Transients
delete_transient('bt_sst_shiprocket_courier_companies');
delete_site_transient('bt_sst_shiprocket_courier_companies');
delete_transient('bt_sst_shiprocket_auth_token');
delete_site_transient('bt_sst_shiprocket_auth_token');
delete_transient('bt_sst_shiprocket_courier_companies_fetched');
delete_site_transient('bt_sst_shiprocket_courier_companies_fetched');
delete_transient('bt-sst-woocommerce-not-installed-notice');
delete_site_transient('bt-sst-woocommerce-not-installed-notice');
delete_transient('bt_sst_cached_pincodes');
delete_site_transient('bt_sst_cached_pincodes');
delete_transient('bt_sst_cached_delivery_estimates');
delete_site_transient('bt_sst_cached_delivery_estimates');
delete_transient('bt_sst_cached_delivery_estimates_shipmozo');
delete_site_transient('bt_sst_cached_delivery_estimates_shipmozo');
delete_transient('bt_sst_cached_delivery_estimates_nimbuspost');
delete_site_transient('bt_sst_cached_delivery_estimates_nimbuspost');
delete_transient('bt_sst_cached_delivery_estimates_delhivery');
delete_site_transient('bt_sst_cached_delivery_estimates_delhivery');
delete_transient('bt_sst_cached_delivery_estimates_fship');
delete_site_transient('bt_sst_cached_delivery_estimates_fship');
delete_transient('bt_sst_cached_ekart_estimates_delhivery');
delete_site_transient('bt_sst_cached_ekart_estimates_delhivery');
delete_transient('bt_sst_cached_delivery_estimates_proship');
delete_site_transient('bt_sst_cached_delivery_estimates_proship');
delete_transient('bt_sst_cached_delivery_estimates_nimbuspost_new');
delete_site_transient('bt_sst_cached_delivery_estimates_nimbuspost_new');

// Clear Cron Jobs
wp_clear_scheduled_hook('bt_push_order_to_shiprocket');
wp_clear_scheduled_hook('bt_push_order_to_shipmozo');
wp_clear_scheduled_hook('bt_push_order_to_nimbuspost');
wp_clear_scheduled_hook('bt_push_order_to_delhivery');
wp_clear_scheduled_hook('bt_push_order_to_ekart');
wp_clear_scheduled_hook('bt_push_order_to_courierkaro');
wp_clear_scheduled_hook('bt_push_order_to_proship');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vendor_pickup_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vendor_pickup_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vendor_pickup_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vendor_pickup_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bt_sst_product_category_processing_days_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bt_sst_product_category_processing_days_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bt_sst_product_category_processing_days_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bt_sst_product_category_processing_days_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

