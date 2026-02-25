<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_cart_pdf_button_label');
delete_site_option('wc_cart_pdf_button_label');
delete_option('wc_cart_pdf_logo');
delete_site_option('wc_cart_pdf_logo');
delete_option('wc_cart_pdf_logo_width');
delete_site_option('wc_cart_pdf_logo_width');
delete_option('wc_cart_pdf_logo_alignment');
delete_site_option('wc_cart_pdf_logo_alignment');
delete_option('wc_cart_pdf_open_pdf');
delete_site_option('wc_cart_pdf_open_pdf');
delete_option('wc_cart_pdf_copy_admin');
delete_site_option('wc_cart_pdf_copy_admin');
delete_option('wc_cart_pdf_show_checkout');
delete_site_option('wc_cart_pdf_show_checkout');
delete_option('wc_cart_pdf_capture_customer');
delete_site_option('wc_cart_pdf_capture_customer');
delete_option('wc_cart_pdf_unique_increment');
delete_site_option('wc_cart_pdf_unique_increment');
delete_option('wc_cart_pdf_modal_capture');
delete_site_option('wc_cart_pdf_modal_capture');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('wc_cart_pdf_unique_increment_num');
delete_site_option('wc_cart_pdf_unique_increment_num');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');

