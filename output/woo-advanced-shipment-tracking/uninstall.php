<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ast_review_update_ignore_388');
delete_site_option('ast_review_update_ignore_388');
delete_option('ast_notice_ignore_39');
delete_site_option('ast_notice_ignore_39');
delete_option('wc_ast_api_date_range');
delete_site_option('wc_ast_api_date_range');
delete_option('ast_usage_data_selector');
delete_site_option('ast_usage_data_selector');
delete_option('customizer_partial_shipped_order_settings_enabled');
delete_site_option('customizer_partial_shipped_order_settings_enabled');
delete_option('woocommerce_customer_partial_shipped_order_settings');
delete_site_option('woocommerce_customer_partial_shipped_order_settings');
delete_option('woocommerce_customer_updated_tracking_order_settings');
delete_site_option('woocommerce_customer_updated_tracking_order_settings');
delete_option('wc_ast_default_provider');
delete_site_option('wc_ast_default_provider');
delete_option('wc_ast_unclude_tracking_info');
delete_site_option('wc_ast_unclude_tracking_info');
delete_option('wc_ast_show_orders_actions');
delete_site_option('wc_ast_show_orders_actions');
delete_option('wc_advanced_shipment_tracking');
delete_site_option('wc_advanced_shipment_tracking');
delete_option('tracking_info_settings');
delete_site_option('tracking_info_settings');
delete_option('ast_option_migrated');
delete_site_option('ast_option_migrated');
delete_option('wc_ast_status_shipped');
delete_site_option('wc_ast_status_shipped');
delete_option('wc_ast_status_partial_shipped');
delete_site_option('wc_ast_status_partial_shipped');
delete_option('wc_ast_status_partial_shipped_label_color');
delete_site_option('wc_ast_status_partial_shipped_label_color');
delete_option('wc_ast_status_partial_shipped_label_font_color');
delete_site_option('wc_ast_status_partial_shipped_label_font_color');
delete_option('wc_ast_status_delivered');
delete_site_option('wc_ast_status_delivered');
delete_option('wc_ast_api_date_format');
delete_site_option('wc_ast_api_date_format');
delete_option('wcast_enable_partial_shipped_email');
delete_site_option('wcast_enable_partial_shipped_email');
delete_option('wc_ast_status_label_color');
delete_site_option('wc_ast_status_label_color');
delete_option('wc_ast_status_label_font_color');
delete_site_option('wc_ast_status_label_font_color');
delete_option('autocomplete_order_tpi');
delete_site_option('autocomplete_order_tpi');
delete_option('wc_ast_status_updated_tracking');
delete_site_option('wc_ast_status_updated_tracking');
delete_option('wc_ast_status_updated_tracking_label_color');
delete_site_option('wc_ast_status_updated_tracking_label_color');
delete_option('wc_ast_status_updated_tracking_label_font_color');
delete_site_option('wc_ast_status_updated_tracking_label_font_color');
delete_option('wcast_enable_updated_tracking_email');
delete_site_option('wcast_enable_updated_tracking_email');
delete_option('ast_trackship_notice_ignore');
delete_site_option('ast_trackship_notice_ignore');
delete_option('ast_pro_shipping_integration_notice_ignore');
delete_site_option('ast_pro_shipping_integration_notice_ignore');
delete_option('zorem_return_update_ignore_385');
delete_site_option('zorem_return_update_ignore_385');
delete_option('alg_wc_custom_order_numbers_enabled');
delete_site_option('alg_wc_custom_order_numbers_enabled');
delete_option('alg_wc_custom_order_numbers_prefix');
delete_site_option('alg_wc_custom_order_numbers_prefix');
delete_option('wcj_order_numbers_enabled');
delete_site_option('wcj_order_numbers_enabled');
delete_option('wcj_order_number_prefix');
delete_site_option('wcj_order_number_prefix');
delete_option('wcj_order_number_date_prefix');
delete_site_option('wcj_order_number_date_prefix');
delete_option('wcj_order_number_suffix');
delete_site_option('wcj_order_number_suffix');
delete_option('wcj_order_number_date_suffix');
delete_site_option('wcj_order_number_date_suffix');
delete_option('wpla_use_amazon_order_number');
delete_site_option('wpla_use_amazon_order_number');
delete_option('order_preview');
delete_site_option('order_preview');
delete_option('orderStatus');
delete_site_option('orderStatus');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('_ast_activation_redirect');
delete_site_transient('_ast_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('zorem_usage_tracker_send');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_shipment_tracking_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_shipment_tracking_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_shipment_tracking_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_shipment_tracking_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shipping_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shipping_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shipping_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shipping_last_name' ) );

