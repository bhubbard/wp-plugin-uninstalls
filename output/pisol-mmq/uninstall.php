<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_mmq_do_activation_redirect');
delete_site_option('pi_mmq_do_activation_redirect');
delete_option('pisol_mmq_category_rules');
delete_site_option('pisol_mmq_category_rules');
delete_option('pi_mmq_min_quantity_enabled');
delete_site_option('pi_mmq_min_quantity_enabled');
delete_option('pi_mmq_max_quantity_enabled');
delete_site_option('pi_mmq_max_quantity_enabled');
delete_option('pi_mmq_min_exclude_product');
delete_site_option('pi_mmq_min_exclude_product');
delete_option('pi_mmq_min_amount_enabled');
delete_site_option('pi_mmq_min_amount_enabled');
delete_option('pi_mmq_min_amount_0');
delete_site_option('pi_mmq_min_amount_0');
delete_option('pi_mmq_min_amount_more_then_min_equal_to_min');
delete_site_option('pi_mmq_min_amount_more_then_min_equal_to_min');
delete_option('pi_mmq_enable_circular_progress');
delete_site_option('pi_mmq_enable_circular_progress');
delete_option('pi_mmq_minimum_amount_position');
delete_site_option('pi_mmq_minimum_amount_position');
delete_option('pi_mmq_minimum_amount_background_color');
delete_site_option('pi_mmq_minimum_amount_background_color');
delete_option('pi_mmq_minimum_amount_font_color');
delete_site_option('pi_mmq_minimum_amount_font_color');
delete_option('pi_mmq_minimum_amount_close_color');
delete_site_option('pi_mmq_minimum_amount_close_color');
delete_option('pi_mmq_minimum_amount_font_weight');
delete_site_option('pi_mmq_minimum_amount_font_weight');
delete_option('pi_mmq_minimum_amount_close_weight');
delete_site_option('pi_mmq_minimum_amount_close_weight');
delete_option('pi_mmq_minimum_amount_font_size');
delete_site_option('pi_mmq_minimum_amount_font_size');
delete_option('pi_mmq_minimum_amount_close_size');
delete_site_option('pi_mmq_minimum_amount_close_size');
delete_option('pi_mmq_min_amount_bar_display');
delete_site_option('pi_mmq_min_amount_bar_display');
delete_option('pi_mmq_min_amount');
delete_site_option('pi_mmq_min_amount');
delete_option('pi_mmq_product_loop_position');
delete_site_option('pi_mmq_product_loop_position');
delete_option('pi_mmq_max_0');
delete_site_option('pi_mmq_max_0');
delete_option('pi_mmq_max_more_then_0_less_then_max');
delete_site_option('pi_mmq_max_more_then_0_less_then_max');
delete_option('pi_mmq_max_equal_to_max');
delete_site_option('pi_mmq_max_equal_to_max');
delete_option('pi_mmq_min_0');
delete_site_option('pi_mmq_min_0');
delete_option('pi_mmq_min_more_then_0_less_then_min');
delete_site_option('pi_mmq_min_more_then_0_less_then_min');
delete_option('pi_mmq_min_more_then_min_equal_to_min');
delete_site_option('pi_mmq_min_more_then_min_equal_to_min');
delete_option('pi_mmq_min_max_0');
delete_site_option('pi_mmq_min_max_0');
delete_option('pi_mmq_min_max_more_then_0_less_then_min');
delete_site_option('pi_mmq_min_max_more_then_0_less_then_min');
delete_option('pi_mmq_min_max_more_then_min_less_then_max');
delete_site_option('pi_mmq_min_max_more_then_min_less_then_max');
delete_option('pi_mmq_min_max_equal_to_max');
delete_site_option('pi_mmq_min_max_equal_to_max');
delete_option('pi_mmq_min_quantity');
delete_site_option('pi_mmq_min_quantity');
delete_option('pi_mmq_max_quantity');
delete_site_option('pi_mmq_max_quantity');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pisol_mmq_disable_global_min_max' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pisol_mmq_disable_global_min_max' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pisol_mmq_disable_global_min_max' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pisol_mmq_disable_global_min_max' ) );

