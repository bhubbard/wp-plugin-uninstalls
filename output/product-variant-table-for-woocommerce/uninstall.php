<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pvtfw_variant_table_columns');
delete_site_option('pvtfw_variant_table_columns');
delete_option('pvtfw_variant_table_tab');
delete_site_option('pvtfw_variant_table_tab');
delete_option('pvtfw_variant_table_place');
delete_site_option('pvtfw_variant_table_place');
delete_option('pvtfw_variant_table_show_table_header');
delete_site_option('pvtfw_variant_table_show_table_header');
delete_option('pvtfw_variant_table_show_available_options_btn');
delete_site_option('pvtfw_variant_table_show_available_options_btn');
delete_option('pvtfw_variant_table_show_available_options_text');
delete_site_option('pvtfw_variant_table_show_available_options_text');
delete_option('pvtfw_variant_table_qty_layout');
delete_site_option('pvtfw_variant_table_qty_layout');
delete_option('pvtfw_variant_table_sub_total');
delete_site_option('pvtfw_variant_table_sub_total');
delete_option('pvtfw_variant_table_scroll_to_top');
delete_site_option('pvtfw_variant_table_scroll_to_top');
delete_option('pvtfw_variant_table_cart_notice');
delete_site_option('pvtfw_variant_table_cart_notice');
delete_option('pvtfw_variant_table_full_table');
delete_site_option('pvtfw_variant_table_full_table');
delete_option('pvtfw_variant_table_scrollable_x');
delete_site_option('pvtfw_variant_table_scrollable_x');
delete_option('pvtfw_variant_table_min_width');
delete_site_option('pvtfw_variant_table_min_width');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('whols_options');
delete_site_option('whols_options');
delete_option('pvtfw_woocommerce_cart_redirect_after_add');
delete_site_option('pvtfw_woocommerce_cart_redirect_after_add');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('pvtfw_variant_table_available_options_btn_text');
delete_site_option('pvtfw_variant_table_available_options_btn_text');
delete_option('pvtfw_variant_table_cart_btn_text');
delete_site_option('pvtfw_variant_table_cart_btn_text');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

