<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_disable_color_schemes');
delete_site_option('elementor_disable_color_schemes');
delete_option('elementor_disable_typography_schemes');
delete_site_option('elementor_disable_typography_schemes');
delete_option('elementor_page_title_selector');
delete_site_option('elementor_page_title_selector');
delete_option('elementor_active_kit');
delete_site_option('elementor_active_kit');
delete_option('yith_woocompare_fields_attrs');
delete_site_option('yith_woocompare_fields_attrs');
delete_option('yith_woocompare_is_button');
delete_site_option('yith_woocompare_is_button');
delete_option('yith_woocompare_button_text');
delete_site_option('yith_woocompare_button_text');
delete_option('yith_woocompare_compare_button_in_product_page');
delete_site_option('yith_woocompare_compare_button_in_product_page');
delete_option('yith_woocompare_compare_button_in_products_list');
delete_site_option('yith_woocompare_compare_button_in_products_list');
delete_option('yith_woocompare_auto_open');
delete_site_option('yith_woocompare_auto_open');
delete_option('yith_woocompare_table_text');
delete_site_option('yith_woocompare_table_text');
delete_option('yith_woocompare_price_end');
delete_site_option('yith_woocompare_price_end');
delete_option('yith_woocompare_add_to_cart_end');
delete_site_option('yith_woocompare_add_to_cart_end');
delete_option('yith_woocompare_image_size');
delete_site_option('yith_woocompare_image_size');
delete_option('cyclone_plugin_activate_status');
delete_site_option('cyclone_plugin_activate_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

