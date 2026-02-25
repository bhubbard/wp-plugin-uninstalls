<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_stock_triggers_adjust_line_item_product_stock_enabled');
delete_site_option('alg_wc_stock_triggers_adjust_line_item_product_stock_enabled');
delete_option('alg_wc_stock_triggers_increase_on_ajax_order');
delete_site_option('alg_wc_stock_triggers_increase_on_ajax_order');
delete_option('alg_wc_stock_triggers_shop_order_bulk_actions');
delete_site_option('alg_wc_stock_triggers_shop_order_bulk_actions');
delete_option('alg_wc_stock_triggers_debug');
delete_site_option('alg_wc_stock_triggers_debug');
delete_option('alg_wc_stock_triggers_adjust_line_item_product_stock_statuses');
delete_site_option('alg_wc_stock_triggers_adjust_line_item_product_stock_statuses');
delete_option('alg_wc_stock_triggers_plugin_enabled');
delete_site_option('alg_wc_stock_triggers_plugin_enabled');
delete_option('alg_wc_stock_triggers_force_can_update_order_stock');
delete_site_option('alg_wc_stock_triggers_force_can_update_order_stock');
delete_option('alg_wc_stock_triggers_enabled');
delete_site_option('alg_wc_stock_triggers_enabled');
delete_option('alg_wc_stock_triggers');
delete_site_option('alg_wc_stock_triggers');
delete_option('alg_wc_stock_triggers_do_remove');
delete_site_option('alg_wc_stock_triggers_do_remove');
delete_option('alg_wc_stock_triggers_require_product');
delete_site_option('alg_wc_stock_triggers_require_product');
delete_option('alg_wc_stock_triggers_require_product_cat');
delete_site_option('alg_wc_stock_triggers_require_product_cat');
delete_option('alg_wc_stock_triggers_version');
delete_site_option('alg_wc_stock_triggers_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

