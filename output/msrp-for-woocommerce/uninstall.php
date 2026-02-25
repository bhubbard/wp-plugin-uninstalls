<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('alg_wc_bulk_price_converter_step');
delete_site_option('alg_wc_bulk_price_converter_step');
delete_option('alg_wc_msrp_plugin_enabled');
delete_site_option('alg_wc_msrp_plugin_enabled');
delete_option('alg_wc_msrp_admin_field_label');
delete_site_option('alg_wc_msrp_admin_field_label');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_msrp_advanced_hide_for_empty_price');
delete_site_option('alg_wc_msrp_advanced_hide_for_empty_price');
delete_option('alg_wc_msrp_admin_add_products_column');
delete_site_option('alg_wc_msrp_admin_add_products_column');
delete_option('alg_wc_msrp_admin_add_quick_edit');
delete_site_option('alg_wc_msrp_admin_add_quick_edit');
delete_option('alg_wc_msrp_admin_add_bulk_edit');
delete_site_option('alg_wc_msrp_admin_add_bulk_edit');
delete_option('alg_wc_msrp_admin_quick_bulk_edit_position');
delete_site_option('alg_wc_msrp_admin_quick_bulk_edit_position');
delete_option('alg_wc_msrp_countries');
delete_site_option('alg_wc_msrp_countries');
delete_option('alg_wc_msrp_countries_currencies');
delete_site_option('alg_wc_msrp_countries_currencies');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('alg_wc_msrp_currencies');
delete_site_option('alg_wc_msrp_currencies');
delete_option('alg_wc_msrp_apply_price_filter');
delete_site_option('alg_wc_msrp_apply_price_filter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_text_format' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_position' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_you_save' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_you_save_percent' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_you_save_percent_round' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_msrp_display_cart_total_savings_positions');
delete_site_option('alg_wc_msrp_display_cart_total_savings_positions');
delete_option('alg_wc_msrp_display_cart_total_savings_template');
delete_site_option('alg_wc_msrp_display_cart_total_savings_template');
delete_option('alg_wc_msrp_variable_optimization');
delete_site_option('alg_wc_msrp_variable_optimization');
delete_option('alg_wc_msrp_hide_regular_price_for_sale_products');
delete_site_option('alg_wc_msrp_hide_regular_price_for_sale_products');
delete_option('alg_wc_msrp_custom_range_format_enabled');
delete_site_option('alg_wc_msrp_custom_range_format_enabled');
delete_option('alg_wc_msrp_custom_range_format');
delete_site_option('alg_wc_msrp_custom_range_format');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('alg_wc_msrp_version');
delete_site_option('alg_wc_msrp_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_msrp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_msrp_by_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_msrp_by_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_msrp_by_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_msrp_by_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_msrp_by_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_msrp_by_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_msrp_by_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_msrp_by_currency' ) );

