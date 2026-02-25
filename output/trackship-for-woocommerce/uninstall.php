<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackship_apikey');
delete_site_option('trackship_apikey');
delete_option('trackers_balance');
delete_site_option('trackers_balance');
delete_option('user_plan');
delete_site_option('user_plan');
delete_option('plan_period');
delete_site_option('plan_period');
delete_option('trackship_db');
delete_site_option('trackship_db');
delete_option('trackship_settings');
delete_site_option('trackship_settings');
delete_option('trackship_email_settings');
delete_site_option('trackship_email_settings');
delete_option('all-shipment-status-delivered');
delete_site_option('all-shipment-status-delivered');
delete_option('wc_advanced_shipment_tracking_ts_page');
delete_site_option('wc_advanced_shipment_tracking_ts_page');
delete_option('alg_wc_custom_order_numbers_enabled');
delete_site_option('alg_wc_custom_order_numbers_enabled');
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
delete_option('wcj_order_number_sequential_enabled');
delete_site_option('wcj_order_number_sequential_enabled');
delete_option('wpla_use_amazon_order_number');
delete_site_option('wpla_use_amazon_order_number');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_feature_fulfillments_enabled');
delete_site_option('woocommerce_feature_fulfillments_enabled');
delete_option('trackship_map_provider');
delete_site_option('trackship_map_provider');
delete_option('wc_ast_show_shipment_status_filter');
delete_site_option('wc_ast_show_shipment_status_filter');
delete_option('enable_email_widget');
delete_site_option('enable_email_widget');
delete_option('enable_notification_for_amazon_order');
delete_site_option('enable_notification_for_amazon_order');
delete_option('wc_ast_use_tracking_page');
delete_site_option('wc_ast_use_tracking_page');
delete_option('wc_ast_trackship_page_id');
delete_site_option('wc_ast_trackship_page_id');
delete_option('wc_ast_trackship_other_page');
delete_site_option('wc_ast_trackship_other_page');
delete_option('trackship_trigger_order_statuses');
delete_site_option('trackship_trigger_order_statuses');
delete_option('late_shipments_email_settings');
delete_site_option('late_shipments_email_settings');
delete_option('wc_ast_remove_trackship_branding');
delete_site_option('wc_ast_remove_trackship_branding');
delete_option('shipment_email_settings');
delete_site_option('shipment_email_settings');
delete_option('wc_ast_select_bg_color');
delete_site_option('wc_ast_select_bg_color');
delete_option('wc_ast_select_font_color');
delete_site_option('wc_ast_select_font_color');
delete_option('wc_ast_select_border_color');
delete_site_option('wc_ast_select_border_color');
delete_option('wc_ast_select_border_radius');
delete_site_option('wc_ast_select_border_radius');
delete_option('wc_ast_select_link_color');
delete_site_option('wc_ast_select_link_color');
delete_option('tracking_page_type');
delete_site_option('tracking_page_type');
delete_option('wc_ast_hide_tracking_events');
delete_site_option('wc_ast_hide_tracking_events');
delete_option('wc_ast_select_tracking_page_layout');
delete_site_option('wc_ast_select_tracking_page_layout');
delete_option('wc_ast_link_to_shipping_provider');
delete_site_option('wc_ast_link_to_shipping_provider');
delete_option('wc_ast_hide_tracking_provider_image');
delete_site_option('wc_ast_hide_tracking_provider_image');
delete_option('wc_ast_hide_from_to');
delete_site_option('wc_ast_hide_from_to');
delete_option('wc_ast_hide_list_mile_tracking');
delete_site_option('wc_ast_hide_list_mile_tracking');
delete_option('wc_ast_status_delivered');
delete_site_option('wc_ast_status_delivered');
delete_option('wc_ast_api_key');
delete_site_option('wc_ast_api_key');
delete_option('wc_ast_api_enabled');
delete_site_option('wc_ast_api_enabled');
delete_option('tracking_form_settings');
delete_site_option('tracking_form_settings');
delete_option('shipped_product_label');
delete_site_option('shipped_product_label');
delete_option('shipping_address_label');
delete_site_option('shipping_address_label');
delete_option('wcast_pickupreminder_email_settings');
delete_site_option('wcast_pickupreminder_email_settings');
delete_option('wcast_intransit_email_settings');
delete_site_option('wcast_intransit_email_settings');
delete_option('wcast_returntosender_email_settings');
delete_site_option('wcast_returntosender_email_settings');
delete_option('wcast_availableforpickup_email_settings');
delete_site_option('wcast_availableforpickup_email_settings');
delete_option('wcast_exception_email_settings');
delete_site_option('wcast_exception_email_settings');
delete_option('wcast_onhold_email_settings');
delete_site_option('wcast_onhold_email_settings');
delete_option('wcast_failure_email_settings');
delete_site_option('wcast_failure_email_settings');
delete_option('wcast_delivered_status_email_settings');
delete_site_option('wcast_delivered_status_email_settings');
delete_option('wcast_outfordelivery_email_settings');
delete_site_option('wcast_outfordelivery_email_settings');
delete_option('email_preview');
delete_site_option('email_preview');
delete_option('klaviyo_settings');
delete_site_option('klaviyo_settings');
delete_option('omnisend_api_key');
delete_site_option('omnisend_api_key');
delete_option('time_schedule_from');
delete_site_option('time_schedule_from');
delete_option('time_schedule_to');
delete_site_option('time_schedule_to');
delete_option('all-shipment-status-sms-delivered');
delete_site_option('all-shipment-status-sms-delivered');
delete_option('smswoo_from_asid');
delete_site_option('smswoo_from_asid');
delete_option('smswoo_sender_phone_number');
delete_site_option('smswoo_sender_phone_number');
delete_option('smswoo_sms_provider');
delete_site_option('smswoo_sms_provider');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template_enabled_customer' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('smswoo_default_sms_template');
delete_site_option('smswoo_default_sms_template');
delete_option('smswoo_clicksend_username');
delete_site_option('smswoo_clicksend_username');
delete_option('smswoo_clicksend_key');
delete_site_option('smswoo_clicksend_key');
delete_option('smswoo_active_charsets');
delete_site_option('smswoo_active_charsets');
delete_option('smswoo_fast2sms_key');
delete_site_option('smswoo_fast2sms_key');
delete_option('smswoo_msg91_authkey');
delete_site_option('smswoo_msg91_authkey');
delete_option('smswoo_msg91_dlt');
delete_site_option('smswoo_msg91_dlt');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template_templete_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template_template_var' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('smswoo_nexmo_key');
delete_site_option('smswoo_nexmo_key');
delete_option('smswoo_nexmo_secret');
delete_site_option('smswoo_nexmo_secret');
delete_option('smswoo_smsalert_key');
delete_site_option('smswoo_smsalert_key');
delete_option('smswoo_twilio_account_sid');
delete_site_option('smswoo_twilio_account_sid');
delete_option('smswoo_twilio_auth_token');
delete_site_option('smswoo_twilio_auth_token');
delete_option('enable_twilio_whatsapp');
delete_site_option('enable_twilio_whatsapp');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template_template_lang' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('whatsapp_business_authkey');
delete_site_option('whatsapp_business_authkey');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'all-shipment-status-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kt_woomail');
delete_site_option('kt_woomail');
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
wp_clear_scheduled_hook('scheduled_cron_shipment_length');
wp_clear_scheduled_hook('trackship_exception_shipments_hook');
wp_clear_scheduled_hook('ast_late_shipments_cron_hook');
wp_clear_scheduled_hook('trackship_late_shipments_hook');
wp_clear_scheduled_hook('trackship_on_hold_shipments_hook');

