<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xelti_co_ui_language');
delete_site_option('xelti_co_ui_language');
delete_option('xelti_co_max_points_per_carton');
delete_site_option('xelti_co_max_points_per_carton');
delete_option('xelti_co_buffer_points');
delete_site_option('xelti_co_buffer_points');
delete_option('xelti_co_buffer_mode');
delete_site_option('xelti_co_buffer_mode');
delete_option('xelti_co_carton_width');
delete_site_option('xelti_co_carton_width');
delete_option('xelti_co_carton_height');
delete_site_option('xelti_co_carton_height');
delete_option('xelti_co_carton_depth');
delete_site_option('xelti_co_carton_depth');
delete_option('xelti_co_extra_carton_cost');
delete_site_option('xelti_co_extra_carton_cost');
delete_option('xelti_co_method_extra_carton_costs');
delete_site_option('xelti_co_method_extra_carton_costs');
delete_option('xelti_co_enabled_shipping_methods');
delete_site_option('xelti_co_enabled_shipping_methods');
delete_option('xelti_co_product_info_enabled');
delete_site_option('xelti_co_product_info_enabled');
delete_option('xelti_co_free_shipping_threshold');
delete_site_option('xelti_co_free_shipping_threshold');
delete_option('xelti_co_bar_color_product');
delete_site_option('xelti_co_bar_color_product');
delete_option('xelti_co_bar_color_product_free');
delete_site_option('xelti_co_bar_color_product_free');
delete_option('xelti_co_bar_color_buffer');
delete_site_option('xelti_co_bar_color_buffer');
delete_option('xelti_co_bar_color_background');
delete_site_option('xelti_co_bar_color_background');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xelti_co_require_buffer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xelti_co_require_buffer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xelti_co_require_buffer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xelti_co_require_buffer' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xelti_co_carton_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xelti_co_carton_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xelti_co_carton_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xelti_co_carton_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xelti_co_composition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xelti_co_composition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xelti_co_composition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xelti_co_composition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_xelti_co_gpsr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_xelti_co_gpsr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_xelti_co_gpsr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_xelti_co_gpsr' ) );

