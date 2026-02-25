<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clk_op_min_price');
delete_site_option('clk_op_min_price');
delete_option('clk_cart_pos');
delete_site_option('clk_cart_pos');
delete_option('clk_op_is_in_category_page');
delete_site_option('clk_op_is_in_category_page');
delete_option('clk_token');
delete_site_option('clk_token');
delete_option('clk_max_amount');
delete_site_option('clk_max_amount');
delete_option('clk_is_show_no_price');
delete_site_option('clk_is_show_no_price');
delete_option('clk_op_button_design');
delete_site_option('clk_op_button_design');
delete_option('clk_has_benefits_page');
delete_site_option('clk_has_benefits_page');
delete_option('clk_op_is_at_checkout');
delete_site_option('clk_op_is_at_checkout');
delete_option('clk_op_position');
delete_site_option('clk_op_position');
delete_option('clk_op_is_in_cart');
delete_site_option('clk_op_is_in_cart');
delete_option('clk_op_max_price');
delete_site_option('clk_op_max_price');
delete_option('clk_op_redurl');
delete_site_option('clk_op_redurl');
delete_option('clk_op_btn_style_mobile');
delete_site_option('clk_op_btn_style_mobile');
delete_option('clk_op_btn_style_desktop');
delete_site_option('clk_op_btn_style_desktop');
delete_option('clk_op_max_price_limit');
delete_site_option('clk_op_max_price_limit');

