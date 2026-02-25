<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpwc_fields_to_show');
delete_site_option('tpwc_fields_to_show');
delete_option('tpwc_window_pop_up_background');
delete_site_option('tpwc_window_pop_up_background');
delete_option('tpwc_display_share_buttons');
delete_site_option('tpwc_display_share_buttons');
delete_option('tpwc_remove_product_type');
delete_site_option('tpwc_remove_product_type');
delete_option('tpwc_add_to_cart_background');
delete_site_option('tpwc_add_to_cart_background');
delete_option('tpwc_add_to_cart_color');
delete_site_option('tpwc_add_to_cart_color');
delete_option('tpwc_add_to_cart_padding');
delete_site_option('tpwc_add_to_cart_padding');
delete_option('tpwc_add_to_cart_border_radius');
delete_site_option('tpwc_add_to_cart_border_radius');
delete_option('tpwc_strart_color');
delete_site_option('tpwc_strart_color');
delete_option('tpwc_limit_products_to_compare');
delete_site_option('tpwc_limit_products_to_compare');
delete_option('tpwc_open_compare_button_type');
delete_site_option('tpwc_open_compare_button_type');
delete_option('tpwc_share_fields_to_show');
delete_site_option('tpwc_share_fields_to_show');
delete_option('tpwc_display_titles');
delete_site_option('tpwc_display_titles');
delete_option('tpwc_open_compare_button_color');
delete_site_option('tpwc_open_compare_button_color');
delete_option('tpwc_open_compare_button_background');
delete_site_option('tpwc_open_compare_button_background');
delete_option('tpwc_open_compare_button_padding');
delete_site_option('tpwc_open_compare_button_padding');
delete_option('tpwc_product_compare_button_color');
delete_site_option('tpwc_product_compare_button_color');
delete_option('tpwc_product_compare_button_background');
delete_site_option('tpwc_product_compare_button_background');
delete_option('tpwc_product_compare_button_padding');
delete_site_option('tpwc_product_compare_button_padding');
delete_option('tp_woocommerce_compare_page_id');
delete_site_option('tp_woocommerce_compare_page_id');
delete_option('tpwc_view_box_background');
delete_site_option('tpwc_view_box_background');
delete_option('tpwc_highlight_cheapest_price');
delete_site_option('tpwc_highlight_cheapest_price');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

