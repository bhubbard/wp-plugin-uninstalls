<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clean_on_deletion' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_font_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_style_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woo_gallery_widget_lite_version');
delete_site_option('woo_gallery_widget_lite_version');
delete_option('a3_wc_widget_product_slider_just_installed');
delete_site_option('a3_wc_widget_product_slider_just_installed');
delete_option('wc_widget_product_slider_lite_style_version');
delete_site_option('wc_widget_product_slider_lite_style_version');
delete_option('wc_product_slider_a3_card_skin_card_layout_settings');
delete_site_option('wc_product_slider_a3_card_skin_card_layout_settings');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('wc_product_slider_widget_skin_settings');
delete_site_option('wc_product_slider_widget_skin_settings');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('wc_product_slider_a3_widget_skin_global_settings');
delete_site_option('wc_product_slider_a3_widget_skin_global_settings');
delete_option('wc_product_slider_a3_widget_skin_dimensions_settings');
delete_site_option('wc_product_slider_a3_widget_skin_dimensions_settings');
delete_option('wc_product_slider_a3_widget_skin_control_settings');
delete_site_option('wc_product_slider_a3_widget_skin_control_settings');
delete_option('wc_product_slider_a3_widget_skin_pager_settings');
delete_site_option('wc_product_slider_a3_widget_skin_pager_settings');
delete_option('wc_product_slider_a3_widget_skin_title_settings');
delete_site_option('wc_product_slider_a3_widget_skin_title_settings');
delete_option('wc_product_slider_a3_widget_skin_price_settings');
delete_site_option('wc_product_slider_a3_widget_skin_price_settings');
delete_option('wc_product_slider_a3_widget_skin_product_link_settings');
delete_site_option('wc_product_slider_a3_widget_skin_product_link_settings');
delete_option('wc_product_slider_a3_widget_skin_category_tag_link_settings');
delete_site_option('wc_product_slider_a3_widget_skin_category_tag_link_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_toggle_box_open' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-custom-boxes' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_product_slider_global_settings');
delete_site_option('wc_product_slider_global_settings');
delete_option('wc_product_slider_a3_card_skin_global_settings');
delete_site_option('wc_product_slider_a3_card_skin_global_settings');
delete_option('wc_product_slider_a3_card_skin_card_style_settings');
delete_site_option('wc_product_slider_a3_card_skin_card_style_settings');
delete_option('wc_product_slider_a3_card_skin_control_settings');
delete_site_option('wc_product_slider_a3_card_skin_control_settings');
delete_option('wc_product_slider_a3_card_skin_description_settings');
delete_site_option('wc_product_slider_a3_card_skin_description_settings');
delete_option('wc_product_slider_a3_card_skin_footer_cell_settings');
delete_site_option('wc_product_slider_a3_card_skin_footer_cell_settings');
delete_option('wc_product_slider_a3_card_skin_pager_settings');
delete_site_option('wc_product_slider_a3_card_skin_pager_settings');
delete_option('wc_product_slider_a3_card_skin_price_settings');
delete_site_option('wc_product_slider_a3_card_skin_price_settings');
delete_option('wc_product_slider_a3_card_skin_title_settings');
delete_site_option('wc_product_slider_a3_card_skin_title_settings');
delete_option('wc_product_slider_a3_mobile_skin_card_container_settings');
delete_site_option('wc_product_slider_a3_mobile_skin_card_container_settings');
delete_option('wc_product_slider_a3_mobile_skin_category_tag_link_settings');
delete_site_option('wc_product_slider_a3_mobile_skin_category_tag_link_settings');
delete_option('wc_product_slider_a3_mobile_skin_pager_settings');
delete_site_option('wc_product_slider_a3_mobile_skin_pager_settings');
delete_option('wc_product_slider_a3_mobile_skin_price_settings');
delete_site_option('wc_product_slider_a3_mobile_skin_price_settings');
delete_option('wc_product_slider_a3_mobile_skin_title_settings');
delete_site_option('wc_product_slider_a3_mobile_skin_title_settings');
delete_option('wc_product_slider_a3_carousel_global_settings');
delete_site_option('wc_product_slider_a3_carousel_global_settings');
delete_option('wc_product_slider_a3_carousel_container_settings');
delete_site_option('wc_product_slider_a3_carousel_container_settings');
delete_option('wc_product_slider_a3_carousel_control_settings');
delete_site_option('wc_product_slider_a3_carousel_control_settings');
delete_option('wc_product_slider_a3_carousel_pager_settings');
delete_site_option('wc_product_slider_a3_carousel_pager_settings');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_status', '_site_transient_%_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wc_featured_products');
delete_site_transient('wc_featured_products');
delete_transient('wc_products_onsale');
delete_site_transient('wc_products_onsale');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

