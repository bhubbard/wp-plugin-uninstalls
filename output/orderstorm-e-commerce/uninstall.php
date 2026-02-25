<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orderstorm_ecommerce_categories_menu_cache_timestamps');
delete_site_option('orderstorm_ecommerce_categories_menu_cache_timestamps');
delete_option('orderstorm_ecommerce_cart_info_for_plugin_updated');
delete_site_option('orderstorm_ecommerce_cart_info_for_plugin_updated');
delete_option('orderstorm_ecommerce_cart_info_for_plugin');
delete_site_option('orderstorm_ecommerce_cart_info_for_plugin');
delete_option('last_time_checked_if_cart_info_was_updated');
delete_site_option('last_time_checked_if_cart_info_was_updated');
delete_option('orderstorm_ecommerce_host_name');
delete_site_option('orderstorm_ecommerce_host_name');
delete_option('orderstorm_ecommerce_key_guid');
delete_site_option('orderstorm_ecommerce_key_guid');
delete_option('orderstorm_ecommerce_product_category_page_id');
delete_site_option('orderstorm_ecommerce_product_category_page_id');
delete_option('orderstorm_ecommerce_product_page_id');
delete_site_option('orderstorm_ecommerce_product_page_id');
delete_option('orderstorm_ecommerce_checkout_page_id');
delete_site_option('orderstorm_ecommerce_checkout_page_id');
delete_option('orderstorm_ecommerce_do_not_verify_ssl_peer_certificate');
delete_site_option('orderstorm_ecommerce_do_not_verify_ssl_peer_certificate');

