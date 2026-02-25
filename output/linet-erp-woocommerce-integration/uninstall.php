<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_linet_debug');
delete_site_option('wc_linet_debug');
delete_option('wc_linet_warehouse_id');
delete_site_option('wc_linet_warehouse_id');
delete_option('wc_linet_sale_pricelist_id');
delete_site_option('wc_linet_sale_pricelist_id');
delete_option('wc_linet_warehouse_stock_count');
delete_site_option('wc_linet_warehouse_stock_count');
delete_option('wc_linet_pricelist_account');
delete_site_option('wc_linet_pricelist_account');
delete_option('wc_linet_syncField');
delete_site_option('wc_linet_syncField');
delete_option('wc_linet_syncValue');
delete_site_option('wc_linet_syncValue');
delete_option('wc_linet_warehouse_exclude');
delete_site_option('wc_linet_warehouse_exclude');
delete_option('wc_linet_syncCatField');
delete_site_option('wc_linet_syncCatField');
delete_option('wc_linet_syncCatValue');
delete_site_option('wc_linet_syncCatValue');
delete_option('wc_linet_last_update');
delete_site_option('wc_linet_last_update');
delete_option('wc_linet_picsync');
delete_site_option('wc_linet_picsync');
delete_option('wc_linet_dev');
delete_site_option('wc_linet_dev');
delete_option('wc_linet_rect_img');
delete_site_option('wc_linet_rect_img');
delete_option('wc_linet_only_stock_manage');
delete_site_option('wc_linet_only_stock_manage');
delete_option('wc_linet_global_attr');
delete_site_option('wc_linet_global_attr');
delete_option('wc_linet_no_description');
delete_site_option('wc_linet_no_description');
delete_option('wc_linet_old_attr');
delete_site_option('wc_linet_old_attr');
delete_option('wc_linet_not_product_attributes');
delete_site_option('wc_linet_not_product_attributes');
delete_option('wc_linet_itemFields');
delete_site_option('wc_linet_itemFields');
delete_option('wc_linet_stock_manage');
delete_site_option('wc_linet_stock_manage');
delete_option('wc_linet_consumer_id');
delete_site_option('wc_linet_consumer_id');
delete_option('wc_linet_consumer_key');
delete_site_option('wc_linet_consumer_key');
delete_option('wc_linet_company');
delete_site_option('wc_linet_company');
delete_option('wc_linet_sync_orders');
delete_site_option('wc_linet_sync_orders');
delete_option('wc_linet_linet_doc');
delete_site_option('wc_linet_linet_doc');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_linet_sync_orders_wc-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_linet_one_item_order');
delete_site_option('wc_linet_one_item_order');
delete_option('wc_linet_j5Token');
delete_site_option('wc_linet_j5Token');
delete_option('wc_linet_j5Number');
delete_site_option('wc_linet_j5Number');
delete_option('wc_linet_sku_find');
delete_site_option('wc_linet_sku_find');
delete_option('wc_linet_genral_item');
delete_site_option('wc_linet_genral_item');
delete_option('wc_linet_genral_acc');
delete_site_option('wc_linet_genral_acc');
delete_option('wc_linet_status');
delete_site_option('wc_linet_status');
delete_option('wc_linet_printview');
delete_site_option('wc_linet_printview');
delete_option('wc_linet_autosend');
delete_site_option('wc_linet_autosend');
delete_option('wc_linet_autosendsms');
delete_site_option('wc_linet_autosendsms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_linet_cf7%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_linet_elementor_form');
delete_site_option('wc_linet_elementor_form');
delete_option('wc_linet_manual_linet_doc');
delete_site_option('wc_linet_manual_linet_doc');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_linet_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_linet_ywapo%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_linet_nonce');
delete_site_option('wc_linet_nonce');
delete_option('wc_linet_sync_items');
delete_site_option('wc_linet_sync_items');
delete_option('_transient_wc_attribute_taxonomies');
delete_site_option('_transient_wc_attribute_taxonomies');
delete_option('wc_linet_income_acc');
delete_site_option('wc_linet_income_acc');
delete_option('wc_linet_income_acc_novat');
delete_site_option('wc_linet_income_acc_novat');
delete_option('wc_linet_sync_back_status');
delete_site_option('wc_linet_sync_back_status');
delete_option('wc_linet_last_sns');
delete_site_option('wc_linet_last_sns');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('linetItemSync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linet_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linet_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linet_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linet_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linet_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linet_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linet_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linet_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_count_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_count_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_count_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_count_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'display_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

