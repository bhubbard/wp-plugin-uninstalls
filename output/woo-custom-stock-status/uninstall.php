<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_slr_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_slr_show_fastest_stock_status_category_page');
delete_site_option('wc_slr_show_fastest_stock_status_category_page');
delete_option('wc_slr_grouped_product_stock_status_for_category_page');
delete_site_option('wc_slr_grouped_product_stock_status_for_category_page');
delete_option('woocommerce_notify_no_stock_amount');
delete_site_option('woocommerce_notify_no_stock_amount');
delete_option('woocommerce_stock_format');
delete_site_option('woocommerce_stock_format');
delete_option('wc_slr_show_quantity_based_status');
delete_site_option('wc_slr_show_quantity_based_status');
delete_option('wc_slr_high_stock_threshold');
delete_site_option('wc_slr_high_stock_threshold');
delete_option('wc_slr_medium_stock_threshold');
delete_site_option('wc_slr_medium_stock_threshold');
delete_option('wc_slr_high_stock_status_label');
delete_site_option('wc_slr_high_stock_status_label');
delete_option('wc_slr_medium_stock_status_label');
delete_site_option('wc_slr_medium_stock_status_label');
delete_option('wc_slr_low_stock_label');
delete_site_option('wc_slr_low_stock_label');
delete_option('wc_slr_show_available_backorder_variation');
delete_site_option('wc_slr_show_available_backorder_variation');
delete_option('wc_slr_hide_variation_status_category_page');
delete_site_option('wc_slr_hide_variation_status_category_page');
delete_option('wc_slr_stock_status_before_price');
delete_site_option('wc_slr_stock_status_before_price');
delete_option('b2bking_plugin_status_setting');
delete_site_option('b2bking_plugin_status_setting');
delete_option('b2bking_guest_access_restriction_setting');
delete_site_option('b2bking_guest_access_restriction_setting');
delete_option('b2bking_multisite_separate_b2bb2c_setting');
delete_site_option('b2bking_multisite_separate_b2bb2c_setting');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_in_cart_checkout' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_slr_show_in_cart_page');
delete_site_option('wc_slr_show_in_cart_page');
delete_option('b2bking_hide_stock_for_b2c_setting');
delete_site_option('b2bking_hide_stock_for_b2c_setting');
delete_option('wc_slr_hide_in_woocommerce_invoice');
delete_site_option('wc_slr_hide_in_woocommerce_invoice');
delete_option('wc_slr_show_in_shop_page');
delete_site_option('wc_slr_show_in_shop_page');
delete_option('wc_slr_show_in_wordpress_blocks');
delete_site_option('wc_slr_show_in_wordpress_blocks');
delete_option('wc_slr_show_in_order_email');
delete_site_option('wc_slr_show_in_order_email');
delete_option('wc_slr_show_instock_backordered');
delete_site_option('wc_slr_show_instock_backordered');
delete_option('wc_slr_show_stock_status_tag_in_email');
delete_site_option('wc_slr_show_stock_status_tag_in_email');
delete_option('wc_slr_hide_sad_face');
delete_site_option('wc_slr_hide_sad_face');
delete_option('wc_slr_stock_status_after_addtocart');
delete_site_option('wc_slr_stock_status_after_addtocart');
delete_option('wc_slr_disable_yoast_compatibility');
delete_site_option('wc_slr_disable_yoast_compatibility');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'grouped_product_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'grouped_product_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'grouped_product_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'grouped_product_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hide_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hide_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hide_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hide_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'b2bking_b2buser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'b2bking_b2buser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'b2bking_b2buser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'b2bking_b2buser' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'woo_custom_stock_status_backorder_status_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'woo_custom_stock_status_backorder_status_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'woo_custom_stock_status_backorder_status_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'woo_custom_stock_status_backorder_status_%' ) );

