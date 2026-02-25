<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushalert_enable_for');
delete_site_option('pushalert_enable_for');
delete_option('_pushalert_enable_auto_sw_manifest');
delete_site_option('_pushalert_enable_auto_sw_manifest');
delete_option('pushalert_config_id');
delete_site_option('pushalert_config_id');
delete_option('_pushalert_abandoned_cart');
delete_site_option('_pushalert_abandoned_cart');
delete_option('_pushalert_out_of_stock');
delete_site_option('_pushalert_out_of_stock');
delete_option('_pushalert_price_drop');
delete_site_option('_pushalert_price_drop');
delete_option('_pushalert_shipment_alert');
delete_site_option('_pushalert_shipment_alert');
delete_option('_pushalert_woocommerce_enable');
delete_site_option('_pushalert_woocommerce_enable');
delete_option('pushalert_api_key');
delete_site_option('pushalert_api_key');
delete_option('pushalert_web_id');
delete_site_option('pushalert_web_id');
delete_option('_pushalert_version');
delete_site_option('_pushalert_version');
delete_option('woocommerce_settings_pushalert_auto_assoc_yes');
delete_site_option('woocommerce_settings_pushalert_auto_assoc_yes');
delete_option('woocommerce_settings_pushalert_auto_assoc_no');
delete_site_option('woocommerce_settings_pushalert_auto_assoc_no');
delete_option('woocommerce_settings_pushalert_auto_assoc');
delete_site_option('woocommerce_settings_pushalert_auto_assoc');
delete_option('pushalert_sender_id');
delete_site_option('pushalert_sender_id');
delete_option('pushalert_default_title');
delete_site_option('pushalert_default_title');
delete_option('pushalert_utm_source');
delete_site_option('pushalert_utm_source');
delete_option('pushalert_utm_medium');
delete_site_option('pushalert_utm_medium');
delete_option('pushalert_utm_campaign');
delete_site_option('pushalert_utm_campaign');
delete_option('pushalert_default_expiry');
delete_site_option('pushalert_default_expiry');
delete_option('pushalert_plugin_activation');
delete_site_option('pushalert_plugin_activation');
delete_option('pushalert_large_image');
delete_site_option('pushalert_large_image');
delete_option('_pushalert_cookie_id');
delete_site_option('_pushalert_cookie_id');
delete_option('pushalert_encrypt_key');
delete_site_option('pushalert_encrypt_key');
delete_option('woocommerce_settings_pushalert_association_css');
delete_site_option('woocommerce_settings_pushalert_association_css');
delete_option('woocommerce_settings_pushalert_confirm_message');
delete_site_option('woocommerce_settings_pushalert_confirm_message');
delete_option('woocommerce_settings_pushalert_button_yes');
delete_site_option('woocommerce_settings_pushalert_button_yes');
delete_option('woocommerce_settings_pushalert_button_no');
delete_site_option('woocommerce_settings_pushalert_button_no');
delete_option('woocommerce_settings_pushalert_dashboard_option');
delete_site_option('woocommerce_settings_pushalert_dashboard_option');
delete_option('_pushalert_send_to_custom');
delete_site_option('_pushalert_send_to_custom');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_notification_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_notification_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_notification_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_notification_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_notification_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_notification_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_notification_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_notification_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_notification_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_notification_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_notification_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_notification_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushalert_publish_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushalert_publish_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushalert_publish_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushalert_publish_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocommerce_persistent_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocommerce_persistent_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocommerce_persistent_cart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocommerce_persistent_cart' ) );

