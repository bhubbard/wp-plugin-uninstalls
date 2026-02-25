<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('woocommerce_email_footer_text_color');
delete_site_option('woocommerce_email_footer_text_color');
delete_option('zerov99_shipping_providers');
delete_site_option('zerov99_shipping_providers');

