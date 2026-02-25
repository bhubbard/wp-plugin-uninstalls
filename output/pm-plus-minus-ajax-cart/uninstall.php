<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmatc_ajax_cart_replace_mode');
delete_site_option('pmatc_ajax_cart_replace_mode');
delete_option('pmatc_ajax_cart_custom_pages');
delete_site_option('pmatc_ajax_cart_custom_pages');
delete_option('pmatc_ajax_cart_quantity_type');
delete_site_option('pmatc_ajax_cart_quantity_type');
delete_option('pmatc_ajax_cart_plus_button_text');
delete_site_option('pmatc_ajax_cart_plus_button_text');
delete_option('pmatc_ajax_cart_minus_button_text');
delete_site_option('pmatc_ajax_cart_minus_button_text');
delete_option('pmatc_ajax_cart_button_background_color');
delete_site_option('pmatc_ajax_cart_button_background_color');
delete_option('pmatc_ajax_cart_button_text_color');
delete_site_option('pmatc_ajax_cart_button_text_color');
delete_option('pmatc_ajax_cart_before_button_text');
delete_site_option('pmatc_ajax_cart_before_button_text');
delete_option('pmatc_ajax_cart_after_button_text');
delete_site_option('pmatc_ajax_cart_after_button_text');
delete_option('pmatc_ajax_cart_variable_product_text');
delete_site_option('pmatc_ajax_cart_variable_product_text');
delete_option('pmatc_ajax_cart_external_product_text');
delete_site_option('pmatc_ajax_cart_external_product_text');
delete_option('pmatc_ajax_cart_grouped_product_text');
delete_site_option('pmatc_ajax_cart_grouped_product_text');
delete_option('pmatc_ajax_cart_custom_css');
delete_site_option('pmatc_ajax_cart_custom_css');

