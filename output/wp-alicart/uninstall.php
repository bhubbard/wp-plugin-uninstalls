<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alicart_title');
delete_site_option('alicart_title');
delete_option('alicart_empty');
delete_site_option('alicart_empty');
delete_option('alipay_return_url');
delete_site_option('alipay_return_url');
delete_option('alicart_add_button_name');
delete_site_option('alicart_add_button_name');
delete_option('alipay_name');
delete_site_option('alipay_name');
delete_option('alipay_email');
delete_site_option('alipay_email');
delete_option('alipay_partner_id');
delete_site_option('alipay_partner_id');
delete_option('alipay_key');
delete_site_option('alipay_key');
delete_option('alicart_base_shipping_cost');
delete_site_option('alicart_base_shipping_cost');
delete_option('alicart_free_shipping_threshold');
delete_site_option('alicart_free_shipping_threshold');
delete_option('alicart_my_cart');
delete_site_option('alicart_my_cart');
delete_option('alicart_check_out');
delete_site_option('alicart_check_out');
delete_option('alicart_products_page_url');
delete_site_option('alicart_products_page_url');
delete_option('alicart_image_hide');
delete_site_option('alicart_image_hide');
delete_option('alicart_not_empty');
delete_site_option('alicart_not_empty');
delete_option('alipay_cart_use_profile_shipping');
delete_site_option('alipay_cart_use_profile_shipping');
delete_option('alipay_cart_collect_address');
delete_site_option('alipay_cart_collect_address');

