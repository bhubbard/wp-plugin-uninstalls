<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_product_open_pricing_enabled');
delete_site_option('alg_wc_product_open_pricing_enabled');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_product_open_pricing_disable_qty');
delete_site_option('alg_wc_product_open_pricing_disable_qty');
delete_option('alg_wc_product_open_pricing_field_position');
delete_site_option('alg_wc_product_open_pricing_field_position');
delete_option('alg_wc_product_open_pricing_field_position_priority');
delete_site_option('alg_wc_product_open_pricing_field_position_priority');
delete_option('alg_wc_product_open_pricing_field_on_loop');
delete_site_option('alg_wc_product_open_pricing_field_on_loop');
delete_option('alg_wc_product_open_pricing_field_loop_position');
delete_site_option('alg_wc_product_open_pricing_field_loop_position');
delete_option('alg_wc_product_open_pricing_field_loop_position_priority');
delete_site_option('alg_wc_product_open_pricing_field_loop_position_priority');
delete_option('alg_wc_product_open_pricing_fix_mini_cart');
delete_site_option('alg_wc_product_open_pricing_fix_mini_cart');
delete_option('alg_wc_product_open_pricing_add_admin_column');
delete_site_option('alg_wc_product_open_pricing_add_admin_column');
delete_option('alg_wc_product_open_pricing_force_decimal_width_enabled');
delete_site_option('alg_wc_product_open_pricing_force_decimal_width_enabled');
delete_option('alg_wc_product_open_pricing_force_decimal_width');
delete_site_option('alg_wc_product_open_pricing_force_decimal_width');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('wpw_pop_add_to_cart_text');
delete_site_option('wpw_pop_add_to_cart_text');
delete_option('alg_wc_product_open_pricing_hide_price');
delete_site_option('alg_wc_product_open_pricing_hide_price');
delete_option('alg_wc_product_open_pricing_loop_hide_price');
delete_site_option('alg_wc_product_open_pricing_loop_hide_price');
delete_option('alg_wc_product_open_pricing_messages_required');
delete_site_option('alg_wc_product_open_pricing_messages_required');
delete_option('alg_wc_product_open_pricing_messages_too_small');
delete_site_option('alg_wc_product_open_pricing_messages_too_small');
delete_option('alg_wc_product_open_pricing_messages_too_big');
delete_site_option('alg_wc_product_open_pricing_messages_too_big');
delete_option('alg_wc_product_open_pricing_price_step');
delete_site_option('alg_wc_product_open_pricing_price_step');
delete_option('alg_wc_product_open_pricing_input_style');
delete_site_option('alg_wc_product_open_pricing_input_style');
delete_option('alg_wc_product_open_pricing_input_pattern');
delete_site_option('alg_wc_product_open_pricing_input_pattern');
delete_option('alg_wc_product_open_pricing_frontend_template');
delete_site_option('alg_wc_product_open_pricing_frontend_template');
delete_option('alg_wc_product_open_pricing_frontend_loop_template');
delete_site_option('alg_wc_product_open_pricing_frontend_loop_template');
delete_option('alg_wc_product_open_pricing_label_frontend');
delete_site_option('alg_wc_product_open_pricing_label_frontend');
delete_option('alg_wc_product_open_pricing_enable_step');
delete_site_option('alg_wc_product_open_pricing_enable_step');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_product_open_pricing_version');
delete_site_option('alg_wc_product_open_pricing_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

