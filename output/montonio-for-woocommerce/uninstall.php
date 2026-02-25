<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('montonio_shipping_enabled');
delete_site_option('montonio_shipping_enabled');
delete_option('montonio_shipping_dropdown_type');
delete_site_option('montonio_shipping_dropdown_type');
delete_option('woocommerce_wc_montonio_api_settings');
delete_site_option('woocommerce_wc_montonio_api_settings');
delete_option('montonio_last_sync');
delete_site_option('montonio_last_sync');
delete_option('montonio_payment_methods');
delete_site_option('montonio_payment_methods');
delete_option('montonio_telemetry_sync_timestamp');
delete_site_option('montonio_telemetry_sync_timestamp');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('montonio_shipping_orderStatusWhenLabelPrinted');
delete_site_option('montonio_shipping_orderStatusWhenLabelPrinted');
delete_option('montonio_shipping_order_status_when_delivered');
delete_site_option('montonio_shipping_order_status_when_delivered');
delete_option('montonio_email_tracking_code_text');
delete_site_option('montonio_email_tracking_code_text');
delete_option('montonio_shipping_show_address');
delete_site_option('montonio_shipping_show_address');
delete_option('montonio_shipping_show_provider_logos');
delete_site_option('montonio_shipping_show_provider_logos');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_montonio_payments_settings');
delete_site_option('woocommerce_montonio_payments_settings');
delete_option('woocommerce_wc_montonio_payments_settings');
delete_site_option('woocommerce_wc_montonio_payments_settings');
delete_option('woocommerce_montonio_card_payments_settings');
delete_site_option('woocommerce_montonio_card_payments_settings');
delete_option('woocommerce_montonio_blik_payments_settings');
delete_site_option('woocommerce_montonio_blik_payments_settings');
delete_option('montonio_shipping_accessKey');
delete_site_option('montonio_shipping_accessKey');
delete_option('montonio_shipping_secretKey');
delete_site_option('montonio_shipping_secretKey');
delete_option('montonio_shipping_sync_timestamp');
delete_site_option('montonio_shipping_sync_timestamp');
delete_option('woocommerce_wc_montonio_hire_purchase_settings');
delete_site_option('woocommerce_wc_montonio_hire_purchase_settings');
delete_option('montonio_shipping_create_shipment_on_status');
delete_site_option('montonio_shipping_create_shipment_on_status');
delete_option('wc_montonio_plugin_version');
delete_site_option('wc_montonio_plugin_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'montonio_banners' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'montonio_banners' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'montonio_banners' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'montonio_banners' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_montonio_no_parcel_machine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_montonio_no_parcel_machine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_montonio_no_parcel_machine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_montonio_no_parcel_machine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_montonio_separate_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_montonio_separate_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_montonio_separate_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_montonio_separate_label' ) );

