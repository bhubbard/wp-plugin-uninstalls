<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('b1cco_plugin_options');
delete_site_option('b1cco_plugin_options');
delete_option('b1cco_btn_enable_product_weight_in_gm');
delete_site_option('b1cco_btn_enable_product_weight_in_gm');
delete_option('b1cco_get_local_atom_url');
delete_site_option('b1cco_get_local_atom_url');
delete_option('b1cco_script_url');
delete_site_option('b1cco_script_url');
delete_option('b1cco_get_custom_cookie_data');
delete_site_option('b1cco_get_custom_cookie_data');
delete_option('b1cco_btn_enable_utm_params');
delete_site_option('b1cco_btn_enable_utm_params');
delete_option('b1cco_btn_enable_cartflow_abandoned_flow');
delete_site_option('b1cco_btn_enable_cartflow_abandoned_flow');
delete_option('b1cco_btn_enable_validate_order_status');
delete_site_option('b1cco_btn_enable_validate_order_status');
delete_option('breeze_refund_api_signkey');
delete_site_option('breeze_refund_api_signkey');
delete_option('breeze_api_key_details');
delete_site_option('breeze_api_key_details');
delete_option('b1cco_btn_enable_order_refund');
delete_site_option('b1cco_btn_enable_order_refund');
delete_option('breeze_cart_button_enable');
delete_site_option('breeze_cart_button_enable');
delete_option('breeze_cart_drawer_button_enable');
delete_site_option('breeze_cart_drawer_button_enable');
delete_option('breeze_refund_shop_id');
delete_site_option('breeze_refund_shop_id');
delete_option('breeze_enable_refund');
delete_site_option('breeze_enable_refund');

