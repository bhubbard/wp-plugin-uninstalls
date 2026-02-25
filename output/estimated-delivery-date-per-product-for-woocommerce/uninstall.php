<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('est_delvry_date');
delete_site_option('est_delvry_date');
delete_option('est_delvry_date_all_pro');
delete_site_option('est_delvry_date_all_pro');
delete_option('est_dispatch_date_all_pro');
delete_site_option('est_dispatch_date_all_pro');
delete_option('est_delvry_days');
delete_site_option('est_delvry_days');
delete_option('est_date_display_single_pro');
delete_site_option('est_date_display_single_pro');
delete_option('delvry_text_position_sinpro');
delete_site_option('delvry_text_position_sinpro');
delete_option('single_pro_display_opt');
delete_site_option('single_pro_display_opt');
delete_option('single_pro_delivry_text_bg');
delete_site_option('single_pro_delivry_text_bg');
delete_option('single_pro_delivry_text_color');
delete_site_option('single_pro_delivry_text_color');
delete_option('single_pro_order_icon');
delete_site_option('single_pro_order_icon');
delete_option('single_pro_shipping_icon');
delete_site_option('single_pro_shipping_icon');
delete_option('single_pro_delivery_icon');
delete_site_option('single_pro_delivery_icon');
delete_option('single_pro_delivry_widget_bg');
delete_site_option('single_pro_delivry_widget_bg');
delete_option('single_pro_delivry_widget_color');
delete_site_option('single_pro_delivry_widget_color');
delete_option('single_pro_delivry_widget_border_color');
delete_site_option('single_pro_delivry_widget_border_color');
delete_option('est_display_on_cartpage');
delete_site_option('est_display_on_cartpage');
delete_option('est_display_on_orderpage');
delete_site_option('est_display_on_orderpage');
delete_option('hide_outofstock_product');
delete_site_option('hide_outofstock_product');
delete_option('hide_product_backorder');
delete_site_option('hide_product_backorder');
delete_option('single_pro_delivery_text');
delete_site_option('single_pro_delivery_text');
delete_option('single_pro_shipping_text');
delete_site_option('single_pro_shipping_text');
delete_option('single_pro_order_text');
delete_site_option('single_pro_order_text');
delete_option('delvry_text_cart_checkout');
delete_site_option('delvry_text_cart_checkout');
delete_option('delvry_text_pro_page');
delete_site_option('delvry_text_pro_page');
delete_option('delvry_text_out_of_stock');
delete_site_option('delvry_text_out_of_stock');
delete_option('delvry_text_cart_checkout_key');
delete_site_option('delvry_text_cart_checkout_key');
delete_option('delvry_text_order_key');
delete_site_option('delvry_text_order_key');
delete_option('delvry_text_order_page');
delete_site_option('delvry_text_order_page');
delete_option('delvry_date_format');
delete_site_option('delvry_date_format');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%edwerror', '_site_transient_%edwerror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'est_date_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'est_date_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'est_date_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'est_date_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delvry_time_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delvry_time_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delvry_time_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delvry_time_outstock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'delvry_time_backorder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'delvry_time_backorder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'delvry_time_backorder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'delvry_time_backorder' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'single_pro_est_delvry_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'single_pro_est_delvry_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'single_pro_est_delvry_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'single_pro_est_delvry_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'est_date_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'est_date_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'est_date_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'est_date_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'est_date_var_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'est_date_var_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'est_date_var_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'est_date_var_delivry_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'est_date_var_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'est_date_var_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'est_date_var_dispatch_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'est_date_var_dispatch_time' ) );

