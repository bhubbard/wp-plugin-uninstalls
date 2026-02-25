<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nfs_plugin_install_date');
delete_site_option('nfs_plugin_install_date');
delete_option('nfusion_enable_product_reindexing');
delete_site_option('nfusion_enable_product_reindexing');
delete_option('nfusion_prev_product_reindexing_interval');
delete_site_option('nfusion_prev_product_reindexing_interval');
delete_option('nfusion_product_reindexing_interval');
delete_site_option('nfusion_product_reindexing_interval');
delete_option('nfusion_tenant_alias');
delete_site_option('nfusion_tenant_alias');
delete_option('nfusion_api_token');
delete_site_option('nfusion_api_token');
delete_option('nfusion_sales_channel');
delete_site_option('nfusion_sales_channel');
delete_option('nfusion_price_update_interval');
delete_site_option('nfusion_price_update_interval');
delete_option('nfusion_low_price_label');
delete_site_option('nfusion_low_price_label');
delete_option('nfusion_show_buy_price');
delete_site_option('nfusion_show_buy_price');
delete_option('nfusion_buy_price_label');
delete_site_option('nfusion_buy_price_label');
delete_option('nfusion_show_tiered_pricing');
delete_site_option('nfusion_show_tiered_pricing');
delete_option('nfusion_pricing_check_label');
delete_site_option('nfusion_pricing_check_label');
delete_option('nfusion_show_credit_card_price');
delete_site_option('nfusion_show_credit_card_price');
delete_option('nfusion_pricing_card_label');
delete_site_option('nfusion_pricing_card_label');
delete_option('nfusion_cc_price');
delete_site_option('nfusion_cc_price');
delete_option('nfusion_use_wholesale_price');
delete_site_option('nfusion_use_wholesale_price');
delete_option('nfs_attributes_seeded');
delete_site_option('nfs_attributes_seeded');
delete_option('nfs_last_invalid_products');
delete_site_option('nfs_last_invalid_products');
delete_option('nfusion_arr_affinity_cookie');
delete_site_option('nfusion_arr_affinity_cookie');
delete_option('nfusion_arr_affinity_samesite_cookie');
delete_site_option('nfusion_arr_affinity_samesite_cookie');
delete_option('nfs_sales_channels');
delete_site_option('nfs_sales_channels');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');
delete_transient('nfs_missing_required_metadata');
delete_site_transient('nfs_missing_required_metadata');
delete_transient('nfs_product_settings_upsert_result');
delete_site_transient('nfs_product_settings_upsert_result');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nfs_weight_uom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nfs_weight_uom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nfs_weight_uom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nfs_weight_uom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nfs_catalog_plugin_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nfs_catalog_plugin_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nfs_catalog_plugin_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nfs_catalog_plugin_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

