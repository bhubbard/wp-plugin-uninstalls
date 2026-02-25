<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmpqcw_field_customizer_enble');
delete_site_option('gmpqcw_field_customizer_enble');
delete_option('gmpqcw_field_customizer_required');
delete_site_option('gmpqcw_field_customizer_required');
delete_option('gmpqcw_field_customizer_field');
delete_site_option('gmpqcw_field_customizer_field');
delete_option('gmpqcw_field_customizer_type');
delete_site_option('gmpqcw_field_customizer_type');
delete_option('gmpqcw_field_customizer_order');
delete_site_option('gmpqcw_field_customizer_order');
delete_option('gmpqcw_field_customizer_option');
delete_site_option('gmpqcw_field_customizer_option');
delete_option('gmpqcw_email_body');
delete_site_option('gmpqcw_email_body');
delete_option('gmpqcw_email_sucesemsg');
delete_site_option('gmpqcw_email_sucesemsg');
delete_option('gmpqcw_send_enquiry_email_cutomer');
delete_site_option('gmpqcw_send_enquiry_email_cutomer');
delete_option('gmpqcw_reci_email');
delete_site_option('gmpqcw_reci_email');
delete_option('gmpqcw_email_sub');
delete_site_option('gmpqcw_email_sub');
delete_option('gmpqcw_customer_email_subject');
delete_site_option('gmpqcw_customer_email_subject');
delete_option('gmpqcw_cart_enable_setting');
delete_site_option('gmpqcw_cart_enable_setting');
delete_option('gmpqcw_cart_button_label');
delete_site_option('gmpqcw_cart_button_label');
delete_option('gmpqcw_cart_display');
delete_site_option('gmpqcw_cart_display');
delete_option('gmpqcw_cart_page');
delete_site_option('gmpqcw_cart_page');
delete_option('gmpqcw_include_exclude');
delete_site_option('gmpqcw_include_exclude');
delete_option('gmpqcw_include_category');
delete_site_option('gmpqcw_include_category');
delete_option('gmpqcw_exclude_category');
delete_site_option('gmpqcw_exclude_category');
delete_option('gmpqcw_content_beforeform');
delete_site_option('gmpqcw_content_beforeform');
delete_option('gmpqcw_content_afterform');
delete_site_option('gmpqcw_content_afterform');
delete_option('gmpqcw_usershow');
delete_site_option('gmpqcw_usershow');
delete_option('gmpqcw_hide_add_to_cart');
delete_site_option('gmpqcw_hide_add_to_cart');
delete_option('gmpqcw_label_show');
delete_site_option('gmpqcw_label_show');
delete_option('gmpqcw_remove_price');
delete_site_option('gmpqcw_remove_price');
delete_option('gmpqcw_show_product_outofstock');
delete_site_option('gmpqcw_show_product_outofstock');
delete_option('gmpqcw_enquiry_btn_bg_color');
delete_site_option('gmpqcw_enquiry_btn_bg_color');
delete_option('gmpqcw_enquiry_btn_text_color');
delete_site_option('gmpqcw_enquiry_btn_text_color');
delete_option('gmpqcw_enquiry_btn_bg_hover_color');
delete_site_option('gmpqcw_enquiry_btn_bg_hover_color');
delete_option('gmpqcw_enquiry_btn_text_hover_color');
delete_site_option('gmpqcw_enquiry_btn_text_hover_color');
delete_option('gmpqcw_redirect_form_sub');
delete_site_option('gmpqcw_redirect_form_sub');
delete_option('gmpqcw_redirect_form_sub_page');
delete_site_option('gmpqcw_redirect_form_sub_page');
delete_option('gmpqcw_disable_cart_checkout_page');
delete_site_option('gmpqcw_disable_cart_checkout_page');
delete_option('gmpqcw_redirect_disable_cart_checkout_page');
delete_site_option('gmpqcw_redirect_disable_cart_checkout_page');
delete_option('gmpqcw_button_label');
delete_site_option('gmpqcw_button_label');
delete_option('gmpqcw_form_title');
delete_site_option('gmpqcw_form_title');
delete_option('gmpqcw_form_required');
delete_site_option('gmpqcw_form_required');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_gmpqcw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_gmpqcw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_gmpqcw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_gmpqcw' ) );

