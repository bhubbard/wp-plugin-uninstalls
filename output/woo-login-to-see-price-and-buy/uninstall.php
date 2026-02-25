<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('wltspab_settings_enable_hide_add_to_cart');
delete_site_option('wltspab_settings_enable_hide_add_to_cart');
delete_option('wltspab_settings_enable_hide_price');
delete_site_option('wltspab_settings_enable_hide_price');
delete_option('wltspab_settings_alternative_to_add_to_cart_color');
delete_site_option('wltspab_settings_alternative_to_add_to_cart_color');
delete_option('wltspab_settings_alternative_to_add_to_cart');
delete_site_option('wltspab_settings_alternative_to_add_to_cart');
delete_option('wltspab_settings_alternative_to_price_color');
delete_site_option('wltspab_settings_alternative_to_price_color');
delete_option('wltspab_settings_alternative_to_price');
delete_site_option('wltspab_settings_alternative_to_price');
delete_option('wltspab_settings_custom_login_link_text');
delete_site_option('wltspab_settings_custom_login_link_text');
delete_option('wltspab_settings_custom_login_link_url');
delete_site_option('wltspab_settings_custom_login_link_url');

