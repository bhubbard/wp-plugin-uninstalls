<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woom_abandoned_cutoff_time');
delete_site_option('woom_abandoned_cutoff_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_code' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_discount_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_amount' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_expiry_duration' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_individual' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_auto_apply' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_coupon_expiry_duration_unit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woom_abandoned_cart_webhook');
delete_site_option('woom_abandoned_cart_webhook');
delete_option('woom_enable_report_error');
delete_site_option('woom_enable_report_error');
delete_option('woom_wa_templates');
delete_site_option('woom_wa_templates');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_template' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_body_params' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_button_params' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woom_triggers');
delete_site_option('woom_triggers');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_label' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woom_trigger_hooks');
delete_site_option('woom_trigger_hooks');
delete_option('woom_abandoned_cart_triggers');
delete_site_option('woom_abandoned_cart_triggers');
delete_option('woom_whatsapp_api');
delete_site_option('woom_whatsapp_api');
delete_option('woom_sent_admin_numbers');
delete_site_option('woom_sent_admin_numbers');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_params' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_header_params' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_attachment_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woom_send_order_notification');
delete_site_option('woom_send_order_notification');
delete_option('woom_order_notification_permission');
delete_site_option('woom_order_notification_permission');
delete_option('woom_whatsapp_number_id');
delete_site_option('woom_whatsapp_number_id');
delete_option('woom_abandoned_enable');
delete_site_option('woom_abandoned_enable');
delete_option('woom_abandoned_auto_delete_coupon');
delete_site_option('woom_abandoned_auto_delete_coupon');
delete_option('wa_system_user_deleted');
delete_site_option('wa_system_user_deleted');
delete_option('wa-system-user');
delete_site_option('wa-system-user');
delete_option('notiqoo_msg_sent_count');
delete_site_option('notiqoo_msg_sent_count');
delete_option('woom_branding_update');
delete_site_option('woom_branding_update');
delete_option('nq_business_whatsapp_number');
delete_site_option('nq_business_whatsapp_number');
delete_option('woom_widget_link');
delete_site_option('woom_widget_link');
delete_option('woom_widget_shortcode');
delete_site_option('woom_widget_shortcode');
delete_option('woom_wb_account_ID');
delete_site_option('woom_wb_account_ID');
delete_option('woom_opt_in_checkbox_label');
delete_site_option('woom_opt_in_checkbox_label');
delete_option('woom_enable_checkbox_priority');
delete_site_option('woom_enable_checkbox_priority');
delete_option('woom_validate_phone_number');
delete_site_option('woom_validate_phone_number');

// Delete Transients
delete_transient('notiqoo_free_updated');
delete_site_transient('notiqoo_free_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcm_delete_coupons_weekly');
wp_clear_scheduled_hook('woom_messaging_check_abandoned');

