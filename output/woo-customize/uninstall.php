<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_billing_page_options');
delete_site_option('woo_billing_page_options');
delete_option('woo_free_page_options');
delete_site_option('woo_free_page_options');
delete_option('woo_color_page_options');
delete_site_option('woo_color_page_options');
delete_option('woo_customize_notice');
delete_site_option('woo_customize_notice');
delete_option('billing_first_name');
delete_site_option('billing_first_name');
delete_option('billing_last_name');
delete_site_option('billing_last_name');
delete_option('billing_company');
delete_site_option('billing_company');
delete_option('billing_address_1');
delete_site_option('billing_address_1');
delete_option('billing_address_2');
delete_site_option('billing_address_2');
delete_option('billing_city');
delete_site_option('billing_city');
delete_option('billing_postcode');
delete_site_option('billing_postcode');
delete_option('billing_country');
delete_site_option('billing_country');
delete_option('billing_state');
delete_site_option('billing_state');
delete_option('billing_phone');
delete_site_option('billing_phone');
delete_option('billing_email');
delete_site_option('billing_email');
delete_option('billing_free_checkout');
delete_site_option('billing_free_checkout');
delete_option('billing_virtual_checkout');
delete_site_option('billing_virtual_checkout');
delete_option('woo_customize_default_color');
delete_site_option('woo_customize_default_color');
delete_option('woo_customize_add_to_cart_text');
delete_site_option('woo_customize_add_to_cart_text');

