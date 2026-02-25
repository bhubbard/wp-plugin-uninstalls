<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evwapp_opiton_message_cart');
delete_site_option('evwapp_opiton_message_cart');
delete_option('evwapp_opiton_text_button_cart');
delete_site_option('evwapp_opiton_text_button_cart');
delete_option('evwapp_opiton_cart_button_target');
delete_site_option('evwapp_opiton_cart_button_target');
delete_option('evwapp_opiton_remove_price');
delete_site_option('evwapp_opiton_remove_price');
delete_option('evwapp_opiton_remove_cart_btn');
delete_site_option('evwapp_opiton_remove_cart_btn');
delete_option('evwapp_opiton_remove_btn');
delete_site_option('evwapp_opiton_remove_btn');
delete_option('evwapp_opiton_message');
delete_site_option('evwapp_opiton_message');
delete_option('evwapp_opiton_text_button');
delete_site_option('evwapp_opiton_text_button');
delete_option('evwapp_opiton_target');
delete_site_option('evwapp_opiton_target');
delete_option('evwapp_opiton_show_btn_single');
delete_site_option('evwapp_opiton_show_btn_single');
delete_option('evwapp_opiton_show_cart');
delete_site_option('evwapp_opiton_show_cart');
delete_option('evwapp_opiton_phone_number');
delete_site_option('evwapp_opiton_phone_number');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('omw_install_id');
delete_site_option('omw_install_id');
delete_option('omw_install_started_at');
delete_site_option('omw_install_started_at');
delete_option('omw_first_plugin_version');
delete_site_option('omw_first_plugin_version');
delete_option('evwapp_tracking_code');
delete_site_option('evwapp_tracking_code');
delete_option('evwapp_opiton_product_order_message');
delete_site_option('evwapp_opiton_product_order_message');
delete_option('evwapp_opiton_order_message');
delete_site_option('evwapp_opiton_order_message');
delete_option('evwapp_opiton_show_thank');
delete_site_option('evwapp_opiton_show_thank');

