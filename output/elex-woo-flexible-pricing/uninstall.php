<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elex_nyp_customization_data');
delete_site_option('elex_nyp_customization_data');
delete_option('nyp_general_settings');
delete_site_option('nyp_general_settings');
delete_option('elex_cpp_settings_enable_min_product_price');
delete_site_option('elex_cpp_settings_enable_min_product_price');
delete_option('elex_cpp_settings_tab_min_product_price');
delete_site_option('elex_cpp_settings_tab_min_product_price');
delete_option('elex_cpp_settings_tab_min_product_price_type');
delete_site_option('elex_cpp_settings_tab_min_product_price_type');
delete_option('elex_cpp_settings_tab_max_product_price');
delete_site_option('elex_cpp_settings_tab_max_product_price');
delete_option('elex_cpp_settings_tab_max_product_price_type');
delete_site_option('elex_cpp_settings_tab_max_product_price_type');
delete_option('elex_cpp_settings_tab_min_product_price_label');
delete_site_option('elex_cpp_settings_tab_min_product_price_label');
delete_option('elex_cpp_settings_tab_min_product_price_description');
delete_site_option('elex_cpp_settings_tab_min_product_price_description');
delete_option('elex_cpp_settings_add_to_cart_label');
delete_site_option('elex_cpp_settings_add_to_cart_label');
delete_option('elex_cpp_settings_enable_regular_sale_price_on_product_page');
delete_site_option('elex_cpp_settings_enable_regular_sale_price_on_product_page');
delete_option('elex_cpp_settings_disable_settings_on_shop_page');
delete_site_option('elex_cpp_settings_disable_settings_on_shop_page');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('elex_cpp_settings_tab_product_category');
delete_site_option('elex_cpp_settings_tab_product_category');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_will_do_it_later' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_troubleshoot_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_text_field_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_category_custom_text_field_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_text_field_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_text_field_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_min_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_type_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_category_custom_max_price_text_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_dynamic_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_dynamic_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_dynamic_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_dynamic_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_product_min_price_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_hide_price_regular_sale_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_hide_price_regular_sale_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_hide_price_regular_sale_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_hide_price_regular_sale_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elex_wfp_add_to_cart_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elex_wfp_add_to_cart_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elex_wfp_add_to_cart_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elex_wfp_add_to_cart_text' ) );

