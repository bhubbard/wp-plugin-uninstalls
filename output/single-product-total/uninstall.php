<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sptotal_total_text');
delete_site_option('sptotal_total_text');
delete_option('sptotal_total_position');
delete_site_option('sptotal_total_position');
delete_option('sptotal_delay');
delete_site_option('sptotal_delay');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('rate_sptotal');
delete_site_option('rate_sptotal');
delete_option('sptotal_cart_btn');
delete_site_option('sptotal_cart_btn');
delete_option('spline_if_inline');
delete_site_option('spline_if_inline');
delete_option('sptotal_background');
delete_site_option('sptotal_background');
delete_option('sptotal_price_color');
delete_site_option('sptotal_price_color');
delete_option('sptotal_label_color');
delete_site_option('sptotal_label_color');
delete_option('sptotal_cart_btn_txt');
delete_site_option('sptotal_cart_btn_txt');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('sptotal_text_align');
delete_site_option('sptotal_text_align');

