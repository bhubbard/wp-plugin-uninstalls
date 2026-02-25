<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('euaifw_show_cart_page');
delete_site_option('euaifw_show_cart_page');
delete_option('ean_frontend_barcode_color');
delete_site_option('ean_frontend_barcode_color');
delete_option('ean_frontend_barcode_bg_color');
delete_site_option('ean_frontend_barcode_bg_color');
delete_option('ean_frontend_barcode_width');
delete_site_option('ean_frontend_barcode_width');
delete_option('ean_frontend_barcode_height');
delete_site_option('ean_frontend_barcode_height');
delete_option('ean_frontend_barcode_display_label');
delete_site_option('ean_frontend_barcode_display_label');
delete_option('ean_front_barcode_label_font_size');
delete_site_option('ean_front_barcode_label_font_size');
delete_option('ean_front_barcode_label_margin');
delete_site_option('ean_front_barcode_label_margin');
delete_option('ean_front_barcode_label_font_style');
delete_site_option('ean_front_barcode_label_font_style');
delete_option('ean_front_barcode_label_text_align');
delete_site_option('ean_front_barcode_label_text_align');
delete_option('ean_front_barcode_label_text_position');
delete_site_option('ean_front_barcode_label_text_position');
delete_option('ean_front_barcode_label_font_family');
delete_site_option('ean_front_barcode_label_font_family');
delete_option('euaifw_enable_ean');
delete_site_option('euaifw_enable_ean');
delete_option('euaifw_show_single_prod_page');
delete_site_option('euaifw_show_single_prod_page');
delete_option('ean_text_position_sinpro');
delete_site_option('ean_text_position_sinpro');
delete_option('ean_singlepro_label');
delete_site_option('ean_singlepro_label');
delete_option('euaifw_show_shop_page');
delete_site_option('euaifw_show_shop_page');
delete_option('ean_text_position_shop');
delete_site_option('ean_text_position_shop');
delete_option('ean_shop_label');
delete_site_option('ean_shop_label');
delete_option('show_ean_order_items_table_thankyou_page');
delete_site_option('show_ean_order_items_table_thankyou_page');
delete_option('maincolor');
delete_site_option('maincolor');
delete_option('mainbackcolor');
delete_site_option('mainbackcolor');
delete_option('euaifw_font_size');
delete_site_option('euaifw_font_size');
delete_option('euaifw_enable_barcode');
delete_site_option('euaifw_enable_barcode');
delete_option('euaifw_show_barcode_single_pro');
delete_site_option('euaifw_show_barcode_single_pro');
delete_option('ean_barcode_position_sinpro');
delete_site_option('ean_barcode_position_sinpro');
delete_option('euaifw_show_barcode_shop_page');
delete_site_option('euaifw_show_barcode_shop_page');
delete_option('ean_barcode_position_shop');
delete_site_option('ean_barcode_position_shop');
delete_option('euaifw_show_barcode_cart_page');
delete_site_option('euaifw_show_barcode_cart_page');
delete_option('show_ean_barcode_imag_thankyou_page');
delete_site_option('show_ean_barcode_imag_thankyou_page');
delete_option('euaifw_search_product');
delete_site_option('euaifw_search_product');
delete_option('show_ean_admin_order_item');
delete_site_option('show_ean_admin_order_item');
delete_option('ean_admin_edit_position');
delete_site_option('ean_admin_edit_position');
delete_option('ean_variation_admin_edit_position');
delete_site_option('ean_variation_admin_edit_position');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%euaifwerror', '_site_transient_%euaifwerror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_global_unique_id' ) );

