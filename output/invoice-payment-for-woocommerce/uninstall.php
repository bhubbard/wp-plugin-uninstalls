<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lkn_wcip_invoices');
delete_site_option('lkn_wcip_invoices');
delete_option('lkn_wcip_quotes');
delete_site_option('lkn_wcip_quotes');
delete_option('lkn_wcip_default_footer');
delete_site_option('lkn_wcip_default_footer');
delete_option('lkn_wcip_quote_expiration');
delete_site_option('lkn_wcip_quote_expiration');
delete_option('lkn_wcip_global_pdf_template_id');
delete_site_option('lkn_wcip_global_pdf_template_id');
delete_option('lkn_wcip_quote_mode');
delete_site_option('lkn_wcip_quote_mode');
delete_option('lkn_wcip_create_invoice_automatically');
delete_site_option('lkn_wcip_create_invoice_automatically');
delete_option('lkn_wcip_anonymous_donation_checkout');
delete_site_option('lkn_wcip_anonymous_donation_checkout');
delete_option('lkn_wcip_after_save_button_email_check');
delete_site_option('lkn_wcip_after_save_button_email_check');
delete_option('lkn_wcip_subscription_active_product_invoices');
delete_site_option('lkn_wcip_subscription_active_product_invoices');
delete_option('lkn_wcip_show_fee_activated');
delete_site_option('lkn_wcip_show_fee_activated');
delete_option('lkn_wcip_show_discount_activated');
delete_site_option('lkn_wcip_show_discount_activated');
delete_option('lkn_wcip_partial_payments_enabled');
delete_site_option('lkn_wcip_partial_payments_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_fee_or_discount_method_activated_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lkn_wcip_donation_dokan_compatibility');
delete_site_option('lkn_wcip_donation_dokan_compatibility');
delete_option('lkn_wcip_partial_interval_minimum');
delete_site_option('lkn_wcip_partial_interval_minimum');
delete_option('lkn_wcip_donation_product_enabled');
delete_site_option('lkn_wcip_donation_product_enabled');
delete_option('lkn_wcip_donation_button_text');
delete_site_option('lkn_wcip_donation_button_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_fee_or_discount_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_fee_or_discount_percent_fixed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_fee_or_discount_value_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_rede_credit_settings');
delete_site_option('woocommerce_rede_credit_settings');
delete_option('woocommerce_maxipago_credit_settings');
delete_site_option('woocommerce_maxipago_credit_settings');
delete_option('woocommerce_lkn_cielo_credit_settings');
delete_site_option('woocommerce_lkn_cielo_credit_settings');
delete_option('woocommerce_lkn_cielo_debit_settings');
delete_site_option('woocommerce_lkn_cielo_debit_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_fee_or_discount_show_price_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_fee_or_discount_icon_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lkn_wcip_otp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lkn_wcip_otp_email_enable_type');
delete_site_option('lkn_wcip_otp_email_enable_type');
delete_option('lkn_wcip_partial_payment_methods_statuses');
delete_site_option('lkn_wcip_partial_payment_methods_statuses');
delete_option('lkn_wcip_partial_complete_status');
delete_site_option('lkn_wcip_partial_complete_status');
delete_option('lkn_wcip_show_products_price');
delete_site_option('lkn_wcip_show_products_price');
delete_option('lkn_wcip_display_coupon');
delete_site_option('lkn_wcip_display_coupon');
delete_option('woocommerce_lkn_invoice_quote_gateway_settings');
delete_site_option('woocommerce_lkn_invoice_quote_gateway_settings');
delete_option('lkn_wcip_partial_payment_methods_enabled');
delete_site_option('lkn_wcip_partial_payment_methods_enabled');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('lkn_wcip_interval_number');
delete_site_option('lkn_wcip_interval_number');
delete_option('lkn_wcip_interval_type');
delete_site_option('lkn_wcip_interval_type');
delete_option('lkn_wcip_whatsapp_buy_button_enabled');
delete_site_option('lkn_wcip_whatsapp_buy_button_enabled');
delete_option('lkn_wcip_whatsapp_message_text');
delete_site_option('lkn_wcip_whatsapp_message_text');
delete_option('lkn_wcip_whatsapp_phone_number');
delete_site_option('lkn_wcip_whatsapp_phone_number');
delete_option('lkn_wcip_whatsapp_button_text');
delete_site_option('lkn_wcip_whatsapp_button_text');
delete_option('lkn_wcip_template_logo_url');
delete_site_option('lkn_wcip_template_logo_url');
delete_option('lkn_wcip_sender_details');
delete_site_option('lkn_wcip_sender_details');
delete_option('lkn_wcip_text_before_payment_link');
delete_site_option('lkn_wcip_text_before_payment_link');

// Clear Cron Jobs
wp_clear_scheduled_hook('lkn_wcip_cron_hook');
wp_clear_scheduled_hook('lkn_wcip_check_expired_quotes');
wp_clear_scheduled_hook('generate_invoice_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_button_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_button_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_button_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_button_values' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_hide_custom_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_hide_custom_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_hide_custom_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_hide_custom_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_free_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_free_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_free_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_free_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_enable_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_enable_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_enable_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_enable_goal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_goal_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_goal_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_goal_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_goal_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_show_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_show_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_show_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_show_progress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_enable_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_enable_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_enable_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_enable_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_deadline_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_deadline_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_deadline_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_deadline_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_show_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_show_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_show_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_show_countdown' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_deadline_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_deadline_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_deadline_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_deadline_message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_donation_current_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_donation_current_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_donation_current_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_donation_current_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lkn-wcip-subscription-product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lkn-wcip-subscription-product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lkn-wcip-subscription-product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lkn-wcip-subscription-product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_interval_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lkn_wcip_subscription_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lkn_wcip_subscription_limit' ) );

