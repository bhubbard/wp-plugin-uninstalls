<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
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
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('osgsw_license_sync');
delete_site_option('osgsw_license_sync');
delete_option('osgsw_column_preferences');
delete_site_option('osgsw_column_preferences');
delete_option('osgsw_column_preferences_updated');
delete_site_option('osgsw_column_preferences_updated');
delete_option('osgsw_license_active');
delete_site_option('osgsw_license_active');
delete_option('osgsw_already_update');
delete_site_option('osgsw_already_update');
delete_option('osgsw_new_user_activate');
delete_site_option('osgsw_new_user_activate');
delete_option('osgsw_update_flag');
delete_site_option('osgsw_update_flag');
delete_option('osgsw_spreadsheet_url');
delete_site_option('osgsw_spreadsheet_url');
delete_option('osgsw_new_user_activate_bulk');
delete_site_option('osgsw_new_user_activate_bulk');
delete_option('osgsw_new_user_activate_trigger_1_11_9');
delete_site_option('osgsw_new_user_activate_trigger_1_11_9');
delete_option('ssgsw_prev_status');
delete_site_option('ssgsw_prev_status');
delete_option('osgsw_setup_step');
delete_site_option('osgsw_setup_step');
delete_option('osgsw_already_update_bulk');
delete_site_option('osgsw_already_update_bulk');
delete_option('osgsw_already_update_trigger_1_11_9');
delete_site_option('osgsw_already_update_trigger_1_11_9');
delete_option('ossgs_first_time_action');
delete_site_option('ossgs_first_time_action');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('osgsw_free_active');
delete_site_option('osgsw_free_active');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%sync_total_items' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%sync_total_price' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('osgsw_install_times');
delete_site_option('osgsw_install_times');
delete_option('osgsw_update_notice');
delete_site_option('osgsw_update_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%product_sku_sync' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%sync_order_products' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%sync_order_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('osgsw_batch_sheet_headers_cache');
delete_site_option('osgsw_batch_sheet_headers_cache');
delete_option('osgsw_batch_original_headers_cache');
delete_site_option('osgsw_batch_original_headers_cache');
delete_option('osgsw_batch_cache_timestamp');
delete_site_option('osgsw_batch_cache_timestamp');
delete_option('osgsw_multiple_itmes');
delete_site_option('osgsw_multiple_itmes');
delete_option('osgsw_show_product_qt');
delete_site_option('osgsw_show_product_qt');
delete_option('osgsw_sync_total_items');
delete_site_option('osgsw_sync_total_items');
delete_option('osgsw_product_sku_sync');
delete_site_option('osgsw_product_sku_sync');
delete_option('osgsw_sync_total_price');
delete_site_option('osgsw_sync_total_price');
delete_option('osgsw_bulk_edit_option2');
delete_site_option('osgsw_bulk_edit_option2');
delete_option('ssgsw_show_product_status');
delete_site_option('ssgsw_show_product_status');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

