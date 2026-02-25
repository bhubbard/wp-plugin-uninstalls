<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grid_background_color');
delete_site_option('grid_background_color');
delete_option('variation_prices_enabled');
delete_site_option('variation_prices_enabled');
delete_option('variations_display_mode');
delete_site_option('variations_display_mode');
delete_option('variation_prices_appearance');
delete_site_option('variation_prices_appearance');
delete_option('variation_prices_show_on');
delete_site_option('variation_prices_show_on');
delete_option('label_swatch_shape');
delete_site_option('label_swatch_shape');
delete_option('color_swatch_shape');
delete_site_option('color_swatch_shape');
delete_option('image_swatch_shape');
delete_site_option('image_swatch_shape');
delete_option('label_swatch_shape_size');
delete_site_option('label_swatch_shape_size');
delete_option('color_swatch_shape_size');
delete_site_option('color_swatch_shape_size');
delete_option('image_swatch_shape_size');
delete_site_option('image_swatch_shape_size');
delete_option('vsw-table_columns');
delete_site_option('vsw-table_columns');
delete_option('table_location');
delete_site_option('table_location');
delete_option('table_header_color');
delete_site_option('table_header_color');
delete_option('table_out_of_stock_row_color');
delete_site_option('table_out_of_stock_row_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vsw-swatch-term-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vsw-swatch-term-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vsw-swatch-term-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vsw-swatch-term-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vsw-swatch-term-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vsw-swatch-term-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vsw-swatch-term-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vsw-swatch-term-color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

