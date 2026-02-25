<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mirrar_brand_id');
delete_site_option('mirrar_brand_id');
delete_option('mirrar_all_post_type');
delete_site_option('mirrar_all_post_type');
delete_option('mirrar_button_position');
delete_site_option('mirrar_button_position');
delete_option('mirrar_btn_product_class');
delete_site_option('mirrar_btn_product_class');
delete_option('mirrar_hover_color');
delete_site_option('mirrar_hover_color');
delete_option('mirrar_button_icon');
delete_site_option('mirrar_button_icon');
delete_option('mirrar_icon_position');
delete_site_option('mirrar_icon_position');
delete_option('mirrar_style');
delete_site_option('mirrar_style');
delete_option('mirrar_button_text');
delete_site_option('mirrar_button_text');
delete_option('mirrar_button_alignment');
delete_site_option('mirrar_button_alignment');
delete_option('mirrar_shop');
delete_site_option('mirrar_shop');
delete_option('mirrar_single_product');
delete_site_option('mirrar_single_product');
delete_option('mirrar_btn_product_css');
delete_site_option('mirrar_btn_product_css');
delete_option('mirrar_all_taxonomy');
delete_site_option('mirrar_all_taxonomy');
delete_option('mirrar_btn_category_class');
delete_site_option('mirrar_btn_category_class');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mirrar_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mirrar_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mirrar_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mirrar_show' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mirrar_brand_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mirrar_brand_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mirrar_brand_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mirrar_brand_id' ) );

