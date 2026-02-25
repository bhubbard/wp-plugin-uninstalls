<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nrp_activated');
delete_site_option('nrp_activated');
delete_option('nrp_settings_version');
delete_site_option('nrp_settings_version');
delete_option('woocommerce_enable_coupons');
delete_site_option('woocommerce_enable_coupons');
delete_option('nrp_rewrite_rules_flushed');
delete_site_option('nrp_rewrite_rules_flushed');
delete_option('nrp_points_per_unit');
delete_site_option('nrp_points_per_unit');
delete_option('nrp_point_value');
delete_site_option('nrp_point_value');
delete_option('nrp_redemption_increment');
delete_site_option('nrp_redemption_increment');
delete_option('nrp_assign_points_status');
delete_site_option('nrp_assign_points_status');
delete_option('nrp_debug');
delete_site_option('nrp_debug');
delete_option('nrp_min_redemption_points');
delete_site_option('nrp_min_redemption_points');
delete_option('nrp_db_version');
delete_site_option('nrp_db_version');
delete_option('nrp_min_redemption_order_value');
delete_site_option('nrp_min_redemption_order_value');
delete_option('nrp_message_single_product');
delete_site_option('nrp_message_single_product');
delete_option('nrp_message_variable_product');
delete_site_option('nrp_message_variable_product');
delete_option('nrp_message_cart_complete_purchase');
delete_site_option('nrp_message_cart_complete_purchase');
delete_option('nrp_message_cart_guest');
delete_site_option('nrp_message_cart_guest');
delete_option('nrp_message_cart_reward_min_spend');
delete_site_option('nrp_message_cart_reward_min_spend');
delete_option('nrp_message_cart_reward_min_points');
delete_site_option('nrp_message_cart_reward_min_points');
delete_option('nrp_message_cart_apply_discount');
delete_site_option('nrp_message_cart_apply_discount');
delete_option('nrp_message_cart_apply_discount_button');
delete_site_option('nrp_message_cart_apply_discount_button');
delete_option('nrp_tax_mode');
delete_site_option('nrp_tax_mode');
delete_option('nrp_earning_ratio');
delete_site_option('nrp_earning_ratio');
delete_option('nrp_rounding_mode');
delete_site_option('nrp_rounding_mode');
delete_option('nrp_redemption_ratio');
delete_site_option('nrp_redemption_ratio');
delete_option('nrp_points_label');
delete_site_option('nrp_points_label');
delete_option('nrp_coupon_calculation_mode');
delete_site_option('nrp_coupon_calculation_mode');
delete_option('nrp_uninstall_delete_settings');
delete_site_option('nrp_uninstall_delete_settings');
delete_option('nrp_uninstall_delete_points_data');
delete_site_option('nrp_uninstall_delete_points_data');
delete_option('nrp_install_date');
delete_site_option('nrp_install_date');
delete_option('nrp_min_redemption_order_value_display');
delete_site_option('nrp_min_redemption_order_value_display');
delete_option('nrp_pro_settings_version');
delete_site_option('nrp_pro_settings_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nrp_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nrp_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nrp_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nrp_points' ) );

