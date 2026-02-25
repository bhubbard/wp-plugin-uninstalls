<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_order_tip_session_type');
delete_site_option('wc_order_tip_session_type');
delete_option('wc_order_tip_enable_alert_remove_tip');
delete_site_option('wc_order_tip_enable_alert_remove_tip');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('wc_order_tip_remove_confirm_msg');
delete_site_option('wc_order_tip_remove_confirm_msg');
delete_option('wc_order_tip_custom_label');
delete_site_option('wc_order_tip_custom_label');
delete_option('wc_order_tip_cash_label');
delete_site_option('wc_order_tip_cash_label');
delete_option('wc_order_tip_remove_new_order');
delete_site_option('wc_order_tip_remove_new_order');
delete_option('wc_order_tip_enabled_cart');
delete_site_option('wc_order_tip_enabled_cart');
delete_option('wc_order_tip_enabled_checkout');
delete_site_option('wc_order_tip_enabled_checkout');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

