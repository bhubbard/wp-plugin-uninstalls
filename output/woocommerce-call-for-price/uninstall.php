<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset_usage_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cfp_lite_allow_tracking');
delete_site_option('cfp_lite_allow_tracking');
delete_option('alg_wc_call_for_price_version');
delete_site_option('alg_wc_call_for_price_version');
delete_option('alg_wc_call_for_price_hide_main_variable_price');
delete_site_option('alg_wc_call_for_price_hide_main_variable_price');
delete_option('alg_wc_call_for_price_enabled');
delete_site_option('alg_wc_call_for_price_enabled');
delete_option('alg_call_for_price_enable_cfp_for_zero_price');
delete_site_option('alg_call_for_price_enable_cfp_for_zero_price');
delete_option('alg_call_for_price_enable_stock_for_empty_price');
delete_site_option('alg_call_for_price_enable_stock_for_empty_price');
delete_option('alg_call_for_price_change_button_text');
delete_site_option('alg_call_for_price_change_button_text');
delete_option('alg_call_for_price_button_text');
delete_site_option('alg_call_for_price_button_text');
delete_option('alg_call_for_price_hide_button');
delete_site_option('alg_call_for_price_hide_button');
delete_option('alg_wc_call_for_price_hide_variations_add_to_cart_button');
delete_site_option('alg_wc_call_for_price_hide_variations_add_to_cart_button');
delete_option('alg_call_for_price_make_all_empty');
delete_site_option('alg_call_for_price_make_all_empty');
delete_option('alg_call_for_price_make_empty_price_per_taxonomy');
delete_site_option('alg_call_for_price_make_empty_price_per_taxonomy');
delete_option('alg_call_for_price_make_empty_price_product_cat');
delete_site_option('alg_call_for_price_make_empty_price_product_cat');
delete_option('alg_call_for_price_make_empty_price_product_tag');
delete_site_option('alg_call_for_price_make_empty_price_product_tag');
delete_option('alg_call_for_price_make_empty_price_by_product_price');
delete_site_option('alg_call_for_price_make_empty_price_by_product_price');
delete_option('alg_call_for_price_make_empty_price_min_price');
delete_site_option('alg_call_for_price_make_empty_price_min_price');
delete_option('alg_call_for_price_make_empty_price_max_price');
delete_site_option('alg_call_for_price_make_empty_price_max_price');
delete_option('alg_wc_call_for_price_hide_sale_sign');
delete_site_option('alg_wc_call_for_price_hide_sale_sign');
delete_option('alg_wc_call_for_price_force_variation_price');
delete_site_option('alg_wc_call_for_price_force_variation_price');
delete_option('alg_call_for_price_enable_cfp_text_for_all_products');
delete_site_option('alg_call_for_price_enable_cfp_text_for_all_products');
delete_option('alg_call_for_price_button_url');
delete_site_option('alg_call_for_price_button_url');
delete_option('alg_call_for_price_make_empty_price_per_user_roles');
delete_site_option('alg_call_for_price_make_empty_price_per_user_roles');
delete_option('alg_wc_call_for_price_simple_enabled');
delete_site_option('alg_wc_call_for_price_simple_enabled');
delete_option('alg_wc_call_for_price_simple_single_enabled');
delete_site_option('alg_wc_call_for_price_simple_single_enabled');
delete_option('alg_wc_call_for_price_text_simple_single');
delete_site_option('alg_wc_call_for_price_text_simple_single');
delete_option('alg_wc_call_for_price_simple_related_enabled');
delete_site_option('alg_wc_call_for_price_simple_related_enabled');
delete_option('alg_wc_call_for_price_simple_home_enabled');
delete_site_option('alg_wc_call_for_price_simple_home_enabled');
delete_option('alg_wc_call_for_price_simple_page_enabled');
delete_site_option('alg_wc_call_for_price_simple_page_enabled');
delete_option('alg_wc_call_for_price_simple_archive_enabled');
delete_site_option('alg_wc_call_for_price_simple_archive_enabled');
delete_option('alg_wc_call_for_price_variable_enabled');
delete_site_option('alg_wc_call_for_price_variable_enabled');
delete_option('alg_wc_call_for_price_variable_single_enabled');
delete_site_option('alg_wc_call_for_price_variable_single_enabled');
delete_option('alg_wc_call_for_price_text_variable_single');
delete_site_option('alg_wc_call_for_price_text_variable_single');
delete_option('alg_wc_call_for_price_variable_related_enabled');
delete_site_option('alg_wc_call_for_price_variable_related_enabled');
delete_option('alg_wc_call_for_price_variable_home_enabled');
delete_site_option('alg_wc_call_for_price_variable_home_enabled');
delete_option('alg_wc_call_for_price_variable_page_enabled');
delete_site_option('alg_wc_call_for_price_variable_page_enabled');
delete_option('alg_wc_call_for_price_variable_archive_enabled');
delete_site_option('alg_wc_call_for_price_variable_archive_enabled');
delete_option('alg_wc_call_for_price_text_variable_archive');
delete_site_option('alg_wc_call_for_price_text_variable_archive');
delete_option('alg_wc_call_for_price_variable_variation_enabled');
delete_site_option('alg_wc_call_for_price_variable_variation_enabled');
delete_option('alg_wc_call_for_price_grouped_enabled');
delete_site_option('alg_wc_call_for_price_grouped_enabled');
delete_option('alg_wc_call_for_price_grouped_single_enabled');
delete_site_option('alg_wc_call_for_price_grouped_single_enabled');
delete_option('alg_wc_call_for_price_text_grouped_single');
delete_site_option('alg_wc_call_for_price_text_grouped_single');
delete_option('alg_wc_call_for_price_grouped_related_enabled');
delete_site_option('alg_wc_call_for_price_grouped_related_enabled');
delete_option('alg_wc_call_for_price_grouped_home_enabled');
delete_site_option('alg_wc_call_for_price_grouped_home_enabled');
delete_option('alg_wc_call_for_price_grouped_page_enabled');
delete_site_option('alg_wc_call_for_price_grouped_page_enabled');
delete_option('alg_wc_call_for_price_grouped_archive_enabled');
delete_site_option('alg_wc_call_for_price_grouped_archive_enabled');
delete_option('alg_wc_call_for_price_external_enabled');
delete_site_option('alg_wc_call_for_price_external_enabled');
delete_option('alg_wc_call_for_price_external_single_enabled');
delete_site_option('alg_wc_call_for_price_external_single_enabled');
delete_option('alg_wc_call_for_price_text_external_single');
delete_site_option('alg_wc_call_for_price_text_external_single');
delete_option('alg_wc_call_for_price_external_related_enabled');
delete_site_option('alg_wc_call_for_price_external_related_enabled');
delete_option('alg_wc_call_for_price_external_home_enabled');
delete_site_option('alg_wc_call_for_price_external_home_enabled');
delete_option('alg_wc_call_for_price_external_page_enabled');
delete_site_option('alg_wc_call_for_price_external_page_enabled');
delete_option('alg_wc_call_for_price_external_archive_enabled');
delete_site_option('alg_wc_call_for_price_external_archive_enabled');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_call_for_price_make_out_of_stock_empty_price');
delete_site_option('alg_call_for_price_make_out_of_stock_empty_price');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_call_for_price_make_empty_price_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ts_tracker_last_send');
delete_site_option('ts_tracker_last_send');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_call_for_price_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_call_for_price_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_call_for_price_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_call_for_price_enabled' ) );

