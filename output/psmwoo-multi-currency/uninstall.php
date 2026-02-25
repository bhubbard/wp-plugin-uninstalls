<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psmfr_settings');
delete_site_option('psmfr_settings');
delete_option('psmfr_current_version');
delete_site_option('psmfr_current_version');
delete_option('psmwmc-licenses');
delete_site_option('psmwmc-licenses');
delete_option('psmwoo_mc_currencies');
delete_site_option('psmwoo_mc_currencies');
delete_option('woocommerce_date_type');
delete_site_option('woocommerce_date_type');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('psmmc-string-translation');
delete_site_option('psmmc-string-translation');
delete_option('psmwoo_mc_checkout_currencies');
delete_site_option('psmwoo_mc_checkout_currencies');
delete_option('psmwoo_mc_checkout_options');
delete_site_option('psmwoo_mc_checkout_options');
delete_option('psmwoo_mc_advanced_settings');
delete_site_option('psmwoo_mc_advanced_settings');
delete_option('psmwoo_mc_display_options');
delete_site_option('psmwoo_mc_display_options');
delete_option('psmwoo_mc_auto_select_country_currencies');
delete_site_option('psmwoo_mc_auto_select_country_currencies');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('psmwoo_mc_current_version');
delete_site_option('psmwoo_mc_current_version');

// Delete Transients
delete_transient('psmfr_installing');
delete_site_transient('psmfr_installing');
delete_transient('product-transient-version');
delete_site_transient('product-transient-version');
delete_transient('psmwoo_mc_installing');
delete_site_transient('psmwoo_mc_installing');

