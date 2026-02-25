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
delete_option('a3rev_woocp_lite_version');
delete_site_option('a3rev_woocp_lite_version');
delete_option('a3rev_woocp_pro_version');
delete_site_option('a3rev_woocp_pro_version');
delete_option('product_compare_id');
delete_site_option('product_compare_id');
delete_option('a3rev_woocp_just_installed');
delete_site_option('a3rev_woocp_just_installed');
delete_option('a3rev_woocp_install_default_data_start');
delete_site_option('a3rev_woocp_install_default_data_start');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('woo_compare_grid_view_settings');
delete_site_option('woo_compare_grid_view_settings');
delete_option('woo_compare_product_page_settings');
delete_site_option('woo_compare_product_page_settings');
delete_option('wc_compare_product_style_version');
delete_site_option('wc_compare_product_style_version');
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
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woo_comparable_settings');
delete_site_option('woo_comparable_settings');
delete_option('woo_compare_comparison_page_global_settings');
delete_site_option('woo_compare_comparison_page_global_settings');
delete_option('woo_compare_product_page_button_style');
delete_site_option('woo_compare_product_page_button_style');
delete_option('woo_compare_product_page_tab');
delete_site_option('woo_compare_product_page_tab');
delete_option('a3rev_woocp_lite_is_updating_2_1_8');
delete_site_option('a3rev_woocp_lite_is_updating_2_1_8');
delete_option('woo_compare_product_page_view_compare_style');
delete_site_option('woo_compare_product_page_view_compare_style');
delete_option('woo_compare_widget_style');
delete_site_option('woo_compare_widget_style');
delete_option('woo_compare_widget_title_style');
delete_site_option('woo_compare_widget_title_style');
delete_option('woo_compare_widget_button_style');
delete_site_option('woo_compare_widget_button_style');
delete_option('woo_compare_widget_clear_all_style');
delete_site_option('woo_compare_widget_clear_all_style');
delete_option('woo_compare_widget_thumbnail_style');
delete_site_option('woo_compare_widget_thumbnail_style');
delete_option('woo_compare_grid_view_button_style');
delete_site_option('woo_compare_grid_view_button_style');
delete_option('woo_compare_gridview_view_compare_style');
delete_site_option('woo_compare_gridview_view_compare_style');
delete_option('woo_compare_page_style');
delete_site_option('woo_compare_page_style');
delete_option('woo_compare_table_style');
delete_site_option('woo_compare_table_style');
delete_option('woo_compare_table_content_style');
delete_site_option('woo_compare_table_content_style');
delete_option('woo_compare_product_prices_style');
delete_site_option('woo_compare_product_prices_style');
delete_option('woo_compare_addtocart_style');
delete_site_option('woo_compare_addtocart_style');
delete_option('woo_compare_viewcart_style');
delete_site_option('woo_compare_viewcart_style');
delete_option('woo_compare_print_message_style');
delete_site_option('woo_compare_print_message_style');
delete_option('woo_compare_print_button_style');
delete_site_option('woo_compare_print_button_style');
delete_option('woo_compare_print_page_settings');
delete_site_option('woo_compare_print_page_settings');
delete_option('woo_compare_close_window_button_style');
delete_site_option('woo_compare_close_window_button_style');
delete_option('a3rev_woocp_lite_is_updating_2_1_9_3');
delete_site_option('a3rev_woocp_lite_is_updating_2_1_9_3');
delete_option('woo_compare_product_success_icon');
delete_site_option('woo_compare_product_success_icon');
delete_option('woo_compare_logo');
delete_site_option('woo_compare_logo');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
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
delete_option('woo_compare_addtocart_success');
delete_site_option('woo_compare_addtocart_success');
delete_option('woo_compare_gridview_product_success_icon');
delete_site_option('woo_compare_gridview_product_success_icon');
delete_option('woo_compare_basket_icon');
delete_site_option('woo_compare_basket_icon');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_status', '_site_transient_%_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_compare_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_compare_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_compare_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_compare_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_woo_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_woo_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_woo_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_woo_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_deactivate_compare_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_deactivate_compare_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_deactivate_compare_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_deactivate_compare_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_special_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_special_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_special_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_special_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_compare_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_compare_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_compare_category_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_compare_category_name' ) );

