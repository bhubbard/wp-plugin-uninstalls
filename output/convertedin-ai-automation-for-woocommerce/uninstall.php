<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ConvertedIn_WooCommerce_loggedIn_in_platform');
delete_site_option('ConvertedIn_WooCommerce_loggedIn_in_platform');
delete_option('ConvertedIn_WooCommerce_api_token');
delete_site_option('ConvertedIn_WooCommerce_api_token');
delete_option('ConvertedIn_WooCommerce_Pixel_Code');
delete_site_option('ConvertedIn_WooCommerce_Pixel_Code');
delete_option('ConvertedIn_WooCommerce_admin_email');
delete_site_option('ConvertedIn_WooCommerce_admin_email');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('ConvertedIn_WooCommerce_initialSyncDone');
delete_site_option('ConvertedIn_WooCommerce_initialSyncDone');
delete_option('ConvertedIn_WooCommerce_redirect_to_installation');
delete_site_option('ConvertedIn_WooCommerce_redirect_to_installation');
delete_option('ConvertedIn_WooCommerce_baseUrl');
delete_site_option('ConvertedIn_WooCommerce_baseUrl');
delete_option('ConvertedIn_WooCommerce_users_last_sync');
delete_site_option('ConvertedIn_WooCommerce_users_last_sync');
delete_option('ConvertedIn_WooCommerce_orders_last_sync');
delete_site_option('ConvertedIn_WooCommerce_orders_last_sync');
delete_option('ConvertedIn_WooCommerce_products_last_sync');
delete_site_option('ConvertedIn_WooCommerce_products_last_sync');
delete_option('ConvertedIn_WooCommerce_categories_last_sync');
delete_site_option('ConvertedIn_WooCommerce_categories_last_sync');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ConvertedIn_WooCommerce_version');
delete_site_option('ConvertedIn_WooCommerce_version');

