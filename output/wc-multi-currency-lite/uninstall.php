<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('_wooexp_currency');
delete_site_option('_wooexp_currency');
delete_option('_wooexp_currencies');
delete_site_option('_wooexp_currencies');
delete_option('_wooexp_currencies_last_update');
delete_site_option('_wooexp_currencies_last_update');

// Clear Cron Jobs
wp_clear_scheduled_hook('wooexp_currency_rates');

