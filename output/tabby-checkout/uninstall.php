<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tabby_checkout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tabby_checkout_order_timeout');
delete_site_option('tabby_checkout_order_timeout');
delete_option('tabby_share_feed');
delete_site_option('tabby_share_feed');
delete_option('tabby_countries');
delete_site_option('tabby_countries');
delete_option('tabby_checkout_disable_for_sku');
delete_site_option('tabby_checkout_disable_for_sku');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('tabby_checkout_failed_action');
delete_site_option('tabby_checkout_failed_action');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('tabby_promo');
delete_site_option('tabby_promo');
delete_option('tabby_promo_cart');
delete_site_option('tabby_promo_cart');
delete_option('tabby_promo_inherit_bg');
delete_site_option('tabby_promo_inherit_bg');
delete_option('tabby_checkout_public_key');
delete_site_option('tabby_checkout_public_key');
delete_option('tabby_checkout_promo_price');
delete_site_option('tabby_checkout_promo_price');
delete_option('tabby_checkout_promo_min_total');
delete_site_option('tabby_checkout_promo_min_total');
delete_option('tabby_plugin_version');
delete_site_option('tabby_plugin_version');
delete_option('woocommerce_tabby_installments_settings');
delete_site_option('woocommerce_tabby_installments_settings');
delete_option('tabby_checkout_mode');
delete_site_option('tabby_checkout_mode');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_tabby_cancel_unpaid_orders');

