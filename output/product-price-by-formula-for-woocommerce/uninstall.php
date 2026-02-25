<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prowc_ppbf_dashboard_widget_enabled');
delete_site_option('prowc_ppbf_dashboard_widget_enabled');
delete_option('prowc_ppbf_products_list_columns');
delete_site_option('prowc_ppbf_products_list_columns');
delete_option('prowc_ppbf_total_params');
delete_site_option('prowc_ppbf_total_params');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'prowc_ppbf_param_note_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('prowc_ppbf_enabled');
delete_site_option('prowc_ppbf_enabled');
delete_option('prowc_ppbf_filters_priority');
delete_site_option('prowc_ppbf_filters_priority');
delete_option('prowc_ppbf_enable_plugin_urls');
delete_site_option('prowc_ppbf_enable_plugin_urls');
delete_option('prowc_ppbf_rounding_enabled');
delete_site_option('prowc_ppbf_rounding_enabled');
delete_option('prowc_ppbf_rounding_precision');
delete_site_option('prowc_ppbf_rounding_precision');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('prowc_ppbf_eval');
delete_site_option('prowc_ppbf_eval');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'prowc_ppbf_param_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('prowc_ppbf_disable_for_empty_price');
delete_site_option('prowc_ppbf_disable_for_empty_price');
delete_option('prowc_ppbf_check_for_product_changes_price');
delete_site_option('prowc_ppbf_check_for_product_changes_price');
delete_option('prowc_ppbf_disable_for_products');
delete_site_option('prowc_ppbf_disable_for_products');
delete_option('prowc_ppbf_disable_for_product_cats');
delete_site_option('prowc_ppbf_disable_for_product_cats');
delete_option('prowc_ppbf_shortcodes_prefix');
delete_site_option('prowc_ppbf_shortcodes_prefix');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('prowc_ppbf_version');
delete_site_option('prowc_ppbf_version');
delete_option('prowc_ppbf_activation_time');
delete_site_option('prowc_ppbf_activation_time');
delete_option('prowc_ppbf_plugin_notice_nopemaybelater');
delete_site_option('prowc_ppbf_plugin_notice_nopemaybelater');
delete_option('prowc_ppbf_plugin_notice_remindlater');
delete_site_option('prowc_ppbf_plugin_notice_remindlater');
delete_option('prowc_ppbf_plugin_reviewtrack');
delete_site_option('prowc_ppbf_plugin_reviewtrack');
delete_option('prowc_ppbf_plugin_notice_dismissed');
delete_site_option('prowc_ppbf_plugin_notice_dismissed');
delete_option('prowc_ppbf_notice_remindlater_rating');
delete_site_option('prowc_ppbf_notice_remindlater_rating');
delete_option('prowc_ppbf_notice_dismissed_rating');
delete_site_option('prowc_ppbf_notice_dismissed_rating');
delete_option('prowc_ppbf_plugin_notice_alreadydid');
delete_site_option('prowc_ppbf_plugin_notice_alreadydid');

