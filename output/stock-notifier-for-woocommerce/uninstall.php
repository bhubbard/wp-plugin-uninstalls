<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('stock_notifier_select_api_value');
delete_site_option('stock_notifier_select_api_value');
delete_option('stock_notifier_whatsapp_toggle');
delete_site_option('stock_notifier_whatsapp_toggle');
delete_option('stock_notifier_ultimate_active');
delete_site_option('stock_notifier_ultimate_active');
delete_option('stock_notifier_license_key');
delete_site_option('stock_notifier_license_key');
delete_option('stock_notifier_dokan_active_or_not');
delete_site_option('stock_notifier_dokan_active_or_not');
delete_option('stock_notifier_pro_active');
delete_site_option('stock_notifier_pro_active');
delete_option('stock_notifier_plugin_active_first_time');
delete_site_option('stock_notifier_plugin_active_first_time');
delete_option('stock_notifier_premium_license_1');
delete_site_option('stock_notifier_premium_license_1');
delete_option('stock_notifier_customs_csss');
delete_site_option('stock_notifier_customs_csss');
delete_option('stock_notifier_twilio_SMS_SID');
delete_site_option('stock_notifier_twilio_SMS_SID');
delete_option('stock_notifier_twilio_SMS_token');
delete_site_option('stock_notifier_twilio_SMS_token');
delete_option('stock_notifier_twilio_SMS_senderNumber');
delete_site_option('stock_notifier_twilio_SMS_senderNumber');
delete_option('stock_notifier_twilio_SID');
delete_site_option('stock_notifier_twilio_SID');
delete_option('stock_notifier_twilio_token');
delete_site_option('stock_notifier_twilio_token');
delete_option('stock_notifier_twilio_senderNumber');
delete_site_option('stock_notifier_twilio_senderNumber');
delete_option('stock_notifier_chatapi_token');
delete_site_option('stock_notifier_chatapi_token');
delete_option('stock_notifier_ultramsg_insatnceID');
delete_site_option('stock_notifier_ultramsg_insatnceID');
delete_option('stock_notifier_ultramsg_token');
delete_site_option('stock_notifier_ultramsg_token');
delete_option('stock_notifier_stock_progress_bar');
delete_site_option('stock_notifier_stock_progress_bar');
delete_option('stock_notifier_stock_progress_bar_style');
delete_site_option('stock_notifier_stock_progress_bar_style');
delete_option('stock_notifier_loop_product_visibility');
delete_site_option('stock_notifier_loop_product_visibility');
delete_option('stock_notifier_hide_sub_non_log');
delete_site_option('stock_notifier_hide_sub_non_log');
delete_option('stock_notifier_hide_subscribe_loggedin');
delete_site_option('stock_notifier_hide_subscribe_loggedin');
delete_option('stock_notifier_show_subscribe_on_backorder');
delete_site_option('stock_notifier_show_subscribe_on_backorder');
delete_option('stock_notifier_hide_subscribe_regular_product');
delete_site_option('stock_notifier_hide_subscribe_regular_product');
delete_option('stock_notifier_hide_subscribe_sale_product');
delete_site_option('stock_notifier_hide_subscribe_sale_product');
delete_option('stock_notifier_ignore_disabled_variation');
delete_site_option('stock_notifier_ignore_disabled_variation');
delete_option('stock_notifier_specific_tags_visibility');
delete_site_option('stock_notifier_specific_tags_visibility');
delete_option('stock_notifier_specific_tags');
delete_site_option('stock_notifier_specific_tags');
delete_option('stock_notifier_specific_categories_visibility');
delete_site_option('stock_notifier_specific_categories_visibility');
delete_option('stock_notifier_specific_categories');
delete_site_option('stock_notifier_specific_categories');
delete_option('stock_notifier_specific_products_visibility');
delete_site_option('stock_notifier_specific_products_visibility');
delete_option('stock_notifier_specific_products');
delete_site_option('stock_notifier_specific_products');
delete_option('stock_notifier_frontent_form_placeholder');
delete_site_option('stock_notifier_frontent_form_placeholder');
delete_option('stock_notifier_frontent_form_button');
delete_site_option('stock_notifier_frontent_form_button');
delete_option('stock_notifier_success_subscription_description');
delete_site_option('stock_notifier_success_subscription_description');
delete_option('stock_notifier_button_color');
delete_site_option('stock_notifier_button_color');
delete_option('stock_notifier_button_border_color');
delete_site_option('stock_notifier_button_border_color');
delete_option('stock_notifier_button_text_color');
delete_site_option('stock_notifier_button_text_color');
delete_option('stock_notifier_default_country_code');
delete_site_option('stock_notifier_default_country_code');
delete_option('stock_notifier_enable_success_subscription');
delete_site_option('stock_notifier_enable_success_subscription');
delete_option('stock_notifier_success_sub_subject');
delete_site_option('stock_notifier_success_sub_subject');
delete_option('stock_notifier_success_sub_message');
delete_site_option('stock_notifier_success_sub_message');
delete_option('stock_notifier_success_sub_email_subject');
delete_site_option('stock_notifier_success_sub_email_subject');
delete_option('stock_notifier_success_sub_email_message');
delete_site_option('stock_notifier_success_sub_email_message');
delete_option('stock_notifier_enable_instock_sms');
delete_site_option('stock_notifier_enable_instock_sms');
delete_option('stock_notifier_enable_instock_sms_image');
delete_site_option('stock_notifier_enable_instock_sms_image');
delete_option('stock_notifier_enable_success_subscription_image');
delete_site_option('stock_notifier_enable_success_subscription_image');
delete_option('stock_notifier_instock_sub_subject');
delete_site_option('stock_notifier_instock_sub_subject');
delete_option('stock_notifier_instock_sub_message');
delete_site_option('stock_notifier_instock_sub_message');
delete_option('stock_notifier_instock_sub_email_subject');
delete_site_option('stock_notifier_instock_sub_email_subject');
delete_option('stock_notifier_instock_sub_email_message');
delete_site_option('stock_notifier_instock_sub_email_message');
delete_option('stock_notifier_multivendor_on_off');
delete_site_option('stock_notifier_multivendor_on_off');
delete_option('stock_notifier_success_subscription_description_gmail');
delete_site_option('stock_notifier_success_subscription_description_gmail');
delete_option('stock_notifier_subscriber_time');
delete_site_option('stock_notifier_subscriber_time');
delete_option('stock_notifier_wp_sms_active');
delete_site_option('stock_notifier_wp_sms_active');
delete_option('stock_notifier_frontent_form_email_placeholder');
delete_site_option('stock_notifier_frontent_form_email_placeholder');
delete_option('stock_notifier_free_active');
delete_site_option('stock_notifier_free_active');
delete_option('stock_notifier_version');
delete_site_option('stock_notifier_version');
delete_option('stock_notifier_install_time');
delete_site_option('stock_notifier_install_time');

// Delete Transients
delete_transient('subscriber_count');
delete_site_transient('subscriber_count');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_subscriber_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_product_upload_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_product_upload_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_product_upload_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_product_upload_author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_gmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_subscriber_gmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_gmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_gmail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_subscriber_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_subscriber_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_variation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_variation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_variation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_variation_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_pid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_pid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_pid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_pid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_set_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_set_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_set_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_set_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stock_notifier_whatsapp_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stock_notifier_whatsapp_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stock_notifier_whatsapp_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stock_notifier_whatsapp_number' ) );

