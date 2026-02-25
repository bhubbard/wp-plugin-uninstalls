<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbot_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbot_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qcld_minimum_accept_price_enable');
delete_site_option('qcld_minimum_accept_price_enable');
delete_option('qcld_minimum_accept_product_lightbox_modal');
delete_site_option('qcld_minimum_accept_product_lightbox_modal');
delete_option('qlcd_map_chatbot_admin_email');
delete_site_option('qlcd_map_chatbot_admin_email');
delete_option('qlcd_map_chatbot_admin_email_subject');
delete_site_option('qlcd_map_chatbot_admin_email_subject');
delete_option('qcld_minimum_accept_price_button_text');
delete_site_option('qcld_minimum_accept_price_button_text');
delete_option('qcld_minimum_accept_price_heading_text');
delete_site_option('qcld_minimum_accept_price_heading_text');
delete_option('qcld_minimum_accept_price_heading_text_again');
delete_site_option('qcld_minimum_accept_price_heading_text_again');
delete_option('qcld_minimum_accept_price_low_alert_text');
delete_site_option('qcld_minimum_accept_price_low_alert_text');
delete_option('qcld_minimum_accept_price_low_alert_text_two');
delete_site_option('qcld_minimum_accept_price_low_alert_text_two');
delete_option('qcld_minimum_accept_price_too_low_alert_text');
delete_site_option('qcld_minimum_accept_price_too_low_alert_text');
delete_option('qcld_minimum_accept_price_acceptable_price');
delete_site_option('qcld_minimum_accept_price_acceptable_price');
delete_option('qcld_minimum_accept_price_acceptable_copoun_code');
delete_site_option('qcld_minimum_accept_price_acceptable_copoun_code');
delete_option('qcld_minimum_accept_price_more_than_offer_price');
delete_site_option('qcld_minimum_accept_price_more_than_offer_price');
delete_option('qcld_minimum_accept_price_talk_to_boss');
delete_site_option('qcld_minimum_accept_price_talk_to_boss');
delete_option('qcld_minimum_accept_price_get_email_address');
delete_site_option('qcld_minimum_accept_price_get_email_address');
delete_option('qcld_minimum_accept_price_thanks_test');
delete_site_option('qcld_minimum_accept_price_thanks_test');
delete_option('qcld_minimum_accept_price_negotiating_test');
delete_site_option('qcld_minimum_accept_price_negotiating_test');
delete_option('qcld_minimum_accept_congratulations_text');
delete_site_option('qcld_minimum_accept_congratulations_text');
delete_option('qcld_minimum_accept_modal_submit_button_text');
delete_site_option('qcld_minimum_accept_modal_submit_button_text');
delete_option('qcld_minimum_accept_congratulations_added_to_cart_msg');
delete_site_option('qcld_minimum_accept_congratulations_added_to_cart_msg');
delete_option('qcld_minimum_accept_congratulations_added_to_cart');
delete_site_option('qcld_minimum_accept_congratulations_added_to_cart');
delete_option('qcld_minimum_accept_modal_checkout_now_button_text');
delete_site_option('qcld_minimum_accept_modal_checkout_now_button_text');
delete_option('qcld_minimum_accept_modal_yes_button_text');
delete_site_option('qcld_minimum_accept_modal_yes_button_text');
delete_option('qcld_minimum_accept_modal_no_button_text');
delete_site_option('qcld_minimum_accept_modal_no_button_text');
delete_option('qcld_minimum_accept_modal_or_button_text');
delete_site_option('qcld_minimum_accept_modal_or_button_text');
delete_option('qcld_minimum_accept_price_enable_variable_validation');
delete_site_option('qcld_minimum_accept_price_enable_variable_validation');
delete_option('qcld_minimum_accept_product_exclude');
delete_site_option('qcld_minimum_accept_product_exclude');
delete_option('qcld_minimum_accept_product_discount_for_all_enable');
delete_site_option('qcld_minimum_accept_product_discount_for_all_enable');
delete_option('qcld_minimum_accept_product_discount_price');
delete_site_option('qcld_minimum_accept_product_discount_price');
delete_option('qcld_minimum_accept_price_exit_intent_lang_price');
delete_site_option('qcld_minimum_accept_price_exit_intent_lang_price');
delete_option('qcld_minimum_accept_price_exit_intent_lang_msg');
delete_site_option('qcld_minimum_accept_price_exit_intent_lang_msg');
delete_option('qcld_minimum_accept_price_exit_intent_lang_button');
delete_site_option('qcld_minimum_accept_price_exit_intent_lang_button');
delete_option('qlcd_wp_chatbot_email_sent');
delete_site_option('qlcd_wp_chatbot_email_sent');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_price_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_price_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_price_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_price_variation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_multi_currency_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_multi_currency_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_multi_currency_variable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcld_minimum_acceptable_multi_currency_variable' ) );

