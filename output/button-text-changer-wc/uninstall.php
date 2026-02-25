<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btcwc_update_cart_btn_text');
delete_site_option('btcwc_update_cart_btn_text');
delete_option('btcwc_coupon_btn_text');
delete_site_option('btcwc_coupon_btn_text');
delete_option('btcwc_fild_single_page_ajax_btn');
delete_site_option('btcwc_fild_single_page_ajax_btn');
delete_option('btcwc_account_dashboard_text');
delete_site_option('btcwc_account_dashboard_text');
delete_option('btcwc_account_orders_text');
delete_site_option('btcwc_account_orders_text');
delete_option('btcwc_account_downloads_text');
delete_site_option('btcwc_account_downloads_text');
delete_option('btcwc_account_address_text');
delete_site_option('btcwc_account_address_text');
delete_option('btcwc_account_details_text');
delete_site_option('btcwc_account_details_text');
delete_option('btcwc_account_log_out_text');
delete_site_option('btcwc_account_log_out_text');
delete_option('btcwc_checkout_btn_text');
delete_site_option('btcwc_checkout_btn_text');
delete_option('btcwc_order_btn_text');
delete_site_option('btcwc_order_btn_text');
delete_option('btcwc_back_to_shop_btn_text');
delete_site_option('btcwc_back_to_shop_btn_text');
delete_option('btcwc_variable_add_to_cart');
delete_site_option('btcwc_variable_add_to_cart');
delete_option('btcwc_group_product_add_to_cart');
delete_site_option('btcwc_group_product_add_to_cart');
delete_option('btcwc_fild_btcwc_add_to_cart');
delete_site_option('btcwc_fild_btcwc_add_to_cart');

