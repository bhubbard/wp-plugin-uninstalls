<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pickup_instruction_customize_settings');
delete_site_option('pickup_instruction_customize_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('orderStatus');
delete_site_option('orderStatus');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wclp_store_days');
delete_site_option('wclp_store_days');
delete_option('location_defualt');
delete_site_option('location_defualt');
delete_option('wclp_status_ready_pickup');
delete_site_option('wclp_status_ready_pickup');
delete_option('wclp_ready_pickup_status_label_color');
delete_site_option('wclp_ready_pickup_status_label_color');
delete_option('wclp_ready_pickup_status_label_font_color');
delete_site_option('wclp_ready_pickup_status_label_font_color');
delete_option('woocommerce_customer_ready_pickup_order_settings');
delete_site_option('woocommerce_customer_ready_pickup_order_settings');
delete_option('wclp_status_picked_up');
delete_site_option('wclp_status_picked_up');
delete_option('wclp_pickup_status_label_color');
delete_site_option('wclp_pickup_status_label_color');
delete_option('wclp_pickup_status_label_font_color');
delete_site_option('wclp_pickup_status_label_font_color');
delete_option('woocommerce_customer_pickup_order_settings');
delete_site_option('woocommerce_customer_pickup_order_settings');
delete_option('wclp_processing_additional_content');
delete_site_option('wclp_processing_additional_content');
delete_option('wclp_show_pickup_instruction');
delete_site_option('wclp_show_pickup_instruction');
delete_option('customizer_pickup_order_settings_enabled');
delete_site_option('customizer_pickup_order_settings_enabled');
delete_option('customizer_ready_pickup_order_settings_enabled');
delete_site_option('customizer_ready_pickup_order_settings_enabled');
delete_option('wclp_local_pickup');
delete_site_option('wclp_local_pickup');
delete_option('wclp_show_address_email');
delete_site_option('wclp_show_address_email');
delete_option('wclp_show_address_order_received');
delete_site_option('wclp_show_address_order_received');
delete_option('wclp_show_address_order_my_account');
delete_site_option('wclp_show_address_order_my_account');
delete_option('wclp_default_country');
delete_site_option('wclp_default_country');
delete_option('wclp_default_single_country');
delete_site_option('wclp_default_single_country');
delete_option('wclp_default_single_state');
delete_site_option('wclp_default_single_state');
delete_option('wclp_default_time_format');
delete_site_option('wclp_default_time_format');
delete_option('wclp_store_name');
delete_site_option('wclp_store_name');
delete_option('wclp_store_address');
delete_site_option('wclp_store_address');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('wclp_store_address_2');
delete_site_option('wclp_store_address_2');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('wclp_store_city');
delete_site_option('wclp_store_city');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('wclp_store_postcode');
delete_site_option('wclp_store_postcode');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('wclp_store_instruction');
delete_site_option('wclp_store_instruction');
delete_option('wclp_pickup_locations');
delete_site_option('wclp_pickup_locations');
delete_option('alp_notice_dismiss179');
delete_site_option('alp_notice_dismiss179');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('alp_notice_ignore');
delete_site_option('alp_notice_ignore');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_data_selector' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_optin_email_notification' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable_usage_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_tracker_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs

