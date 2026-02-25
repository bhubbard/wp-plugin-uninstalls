<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('alg_wc_oma_message_format_types_enabled');
delete_site_option('alg_wc_oma_message_format_types_enabled');
delete_option('alg_wc_oma_message_format_types');
delete_site_option('alg_wc_oma_message_format_types');
delete_option('alg_wc_oma_order_sum');
delete_site_option('alg_wc_oma_order_sum');
delete_option('alg_wc_oma_exclude_taxes');
delete_site_option('alg_wc_oma_exclude_taxes');
delete_option('alg_wc_oma_exclude_shipping');
delete_site_option('alg_wc_oma_exclude_shipping');
delete_option('alg_wc_oma_exclude_discounts');
delete_site_option('alg_wc_oma_exclude_discounts');
delete_option('alg_wc_oma_exclude_fees');
delete_site_option('alg_wc_oma_exclude_fees');
delete_option('alg_wc_oma_include_wc_subscription_cart_total');
delete_site_option('alg_wc_oma_include_wc_subscription_cart_total');
delete_option('alg_wc_oma_type_sum_cart_total_rounding');
delete_site_option('alg_wc_oma_type_sum_cart_total_rounding');
delete_option('alg_wc_oma_type_sum_cart_total_rounding_precision');
delete_site_option('alg_wc_oma_type_sum_cart_total_rounding_precision');
delete_option('alg_wc_oma_plugin_enabled');
delete_site_option('alg_wc_oma_plugin_enabled');
delete_option('alg_wc_oma_by_user_role_priority');
delete_site_option('alg_wc_oma_by_user_role_priority');
delete_option('alg_wc_oma_block_checkout_process');
delete_site_option('alg_wc_oma_block_checkout_process');
delete_option('alg_wc_oma_block_store_api');
delete_site_option('alg_wc_oma_block_store_api');
delete_option('alg_wc_oma_remove_notices_on_added_to_cart');
delete_site_option('alg_wc_oma_remove_notices_on_added_to_cart');
delete_option('alg_wc_oma_max_validate_on_add_to_cart');
delete_site_option('alg_wc_oma_max_validate_on_add_to_cart');
delete_option('alg_wc_oma_max_hide_add_to_cart_loop');
delete_site_option('alg_wc_oma_max_hide_add_to_cart_loop');
delete_option('alg_wc_oma_max_hide_add_to_cart_loop_content');
delete_site_option('alg_wc_oma_max_hide_add_to_cart_loop_content');
delete_option('alg_wc_oma_max_hide_add_to_cart_single');
delete_site_option('alg_wc_oma_max_hide_add_to_cart_single');
delete_option('alg_wc_oma_block_checkout_hook');
delete_site_option('alg_wc_oma_block_checkout_hook');
delete_option('alg_wc_oma_disable_block_checkout_btn');
delete_site_option('alg_wc_oma_disable_block_checkout_btn');
delete_option('alg_wc_oma_login_requirement_enabled');
delete_site_option('alg_wc_oma_login_requirement_enabled');
delete_option('alg_wc_oma_login_requirement_notice_msg');
delete_site_option('alg_wc_oma_login_requirement_notice_msg');
delete_option('alg_wc_oma_login_requirement_notice_type');
delete_site_option('alg_wc_oma_login_requirement_notice_type');
delete_option('alg_wc_oma_cart_notice_enabled');
delete_site_option('alg_wc_oma_cart_notice_enabled');
delete_option('alg_wc_oma_max_hide_add_to_cart_single_content');
delete_site_option('alg_wc_oma_max_hide_add_to_cart_single_content');
delete_option('alg_wc_oma_require_all_types');
delete_site_option('alg_wc_oma_require_all_types');
delete_option('alg_wc_oma_block_checkout');
delete_site_option('alg_wc_oma_block_checkout');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_oma_by_user_role_enabled');
delete_site_option('alg_wc_oma_by_user_role_enabled');
delete_option('alg_wc_oma_data_version');
delete_site_option('alg_wc_oma_data_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_order_minimum_amount_by_user_role_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_oma_get_user_roles_method');
delete_site_option('alg_wc_oma_get_user_roles_method');
delete_option('alg_wc_oma_enabled_user_roles');
delete_site_option('alg_wc_oma_enabled_user_roles');
delete_option('alg_wc_oma_amount_limits');
delete_site_option('alg_wc_oma_amount_limits');
delete_option('alg_wc_oma_amount_types');
delete_site_option('alg_wc_oma_amount_types');
delete_option('alg_wc_oma_min_sum_message');
delete_site_option('alg_wc_oma_min_sum_message');
delete_option('alg_wc_order_minimum_amount_error_message');
delete_site_option('alg_wc_order_minimum_amount_error_message');
delete_option('alg_wc_order_minimum_amount_cart_notice_message');
delete_site_option('alg_wc_order_minimum_amount_cart_notice_message');
delete_option('alg_wc_oma_min_sum_by_user_role');
delete_site_option('alg_wc_oma_min_sum_by_user_role');
delete_option('alg_wc_oma_checkout_force_refresh');
delete_site_option('alg_wc_oma_checkout_force_refresh');
delete_option('alg_wc_oma_checkout_force_refresh_hook');
delete_site_option('alg_wc_oma_checkout_force_refresh_hook');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_oma_message_positions_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_oma_msg_force_display');
delete_site_option('alg_wc_oma_msg_force_display');
delete_option('alg_wc_oma_display_messages_on_empty_cart');
delete_site_option('alg_wc_oma_display_messages_on_empty_cart');
delete_option('alg_wc_oma_display_multiple_msg');
delete_site_option('alg_wc_oma_display_multiple_msg');
delete_option('alg_wc_oma_cart_products_list_variations');
delete_site_option('alg_wc_oma_cart_products_list_variations');
delete_option('alg_wc_oma_currencies');
delete_site_option('alg_wc_oma_currencies');
delete_option('alg_wc_oma_currencies_calculation_method');
delete_site_option('alg_wc_oma_currencies_calculation_method');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('alg_wc_oma_add_fee_for_each_limit');
delete_site_option('alg_wc_oma_add_fee_for_each_limit');
delete_option('alg_wc_oma_by_shipping_enabled');
delete_site_option('alg_wc_oma_by_shipping_enabled');
delete_option('alg_wc_oma_by_shipping_messages_enabled');
delete_site_option('alg_wc_oma_by_shipping_messages_enabled');
delete_option('alg_wc_oma_by_gateway_enabled');
delete_site_option('alg_wc_oma_by_gateway_enabled');
delete_option('alg_wc_oma_by_gateway_messages_enabled');
delete_site_option('alg_wc_oma_by_gateway_messages_enabled');
delete_option('alg_wc_oma_products_cart_total_list_variations');
delete_site_option('alg_wc_oma_products_cart_total_list_variations');
delete_option('alg_wc_oma_by_shipping_type');
delete_site_option('alg_wc_oma_by_shipping_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_oma_version');
delete_site_option('alg_wc_oma_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpfcs_dashboard_banner_closed_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpfcs_dashboard_banner_closed_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpfcs_dashboard_banner_closed_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpfcs_dashboard_banner_closed_time' ) );

