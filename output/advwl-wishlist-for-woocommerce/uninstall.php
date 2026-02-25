<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advwl_btn_position');
delete_site_option('advwl_btn_position');
delete_option('advwl_after_add_to_wishlist_behaviour_add');
delete_site_option('advwl_after_add_to_wishlist_behaviour_add');
delete_option('advwl_btn_text');
delete_site_option('advwl_btn_text');
delete_option('advwl_btn_view_text');
delete_site_option('advwl_btn_view_text');
delete_option('advwl_btn_remove_text');
delete_site_option('advwl_btn_remove_text');
delete_option('advwl_btn_already_in');
delete_site_option('advwl_btn_already_in');
delete_option('advwl_pro_added_text');
delete_site_option('advwl_pro_added_text');
delete_option('advwl_btn_archive');
delete_site_option('advwl_btn_archive');
delete_option('advwl_btn_archive_position');
delete_site_option('advwl_btn_archive_position');
delete_option('advwl_btn_style');
delete_site_option('advwl_btn_style');
delete_option('advwl_btn_icon');
delete_site_option('advwl_btn_icon');
delete_option('advwl_wishlist_page');
delete_site_option('advwl_wishlist_page');
delete_option('advwl_wishlist_name');
delete_site_option('advwl_wishlist_name');
delete_option('advwl_remove_from_wishlist');
delete_site_option('advwl_remove_from_wishlist');
delete_option('advwl_redirect_to_cart');
delete_site_option('advwl_redirect_to_cart');
delete_option('advwl_success_notice');
delete_site_option('advwl_success_notice');
delete_option('advwl_show_prod_image');
delete_site_option('advwl_show_prod_image');
delete_option('advwl_show_prod_title');
delete_site_option('advwl_show_prod_title');
delete_option('advwl_show_prod_price');
delete_site_option('advwl_show_prod_price');
delete_option('advwl_show_prod_stock');
delete_site_option('advwl_show_prod_stock');
delete_option('advwl_show_date_added');
delete_site_option('advwl_show_date_added');
delete_option('advwl_cart_style');
delete_site_option('advwl_cart_style');
delete_option('advwl_cart_text');
delete_site_option('advwl_cart_text');
delete_option('advwl_show_remove_icon');
delete_site_option('advwl_show_remove_icon');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('advwl_plugin_status');
delete_site_option('advwl_plugin_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock_status' ) );

