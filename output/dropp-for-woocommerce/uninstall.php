<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_dropp_is_settings');
delete_site_option('woocommerce_dropp_is_settings');
delete_option('woocommerce_dropp_shipping_db_version');
delete_site_option('woocommerce_dropp_shipping_db_version');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('dropp_for_woocommerce_admin_notices');
delete_site_option('dropp_for_woocommerce_admin_notices');

// Delete Transients
delete_transient('dropp_pickup_enabled');
delete_site_transient('dropp_pickup_enabled');
delete_transient('dropp_for_woocommerce_price_info');
delete_site_transient('dropp_for_woocommerce_price_info');
delete_transient('dropp_delivery_postcodes');
delete_site_transient('dropp_delivery_postcodes');

// Clear Cron Jobs
wp_clear_scheduled_hook('dropp_schedule_add_new');

