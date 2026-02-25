<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_customer_partial_shipped_order_settings');
delete_site_option('woocommerce_customer_partial_shipped_order_settings');
delete_option('woocommerce_customer_shipped_order_settings');
delete_site_option('woocommerce_customer_shipped_order_settings');
delete_option('parcelpanel_admin_notices');
delete_site_option('parcelpanel_admin_notices');
delete_option('parcelpanel_free_upgrade_opened_at');
delete_site_option('parcelpanel_free_upgrade_opened_at');
delete_option('alg_wc_custom_order_numbers_enabled');
delete_site_option('alg_wc_custom_order_numbers_enabled');
delete_option('alg_wc_custom_order_numbers_prefix');
delete_site_option('alg_wc_custom_order_numbers_prefix');
delete_option('wcj_order_numbers_enabled');
delete_site_option('wcj_order_numbers_enabled');
delete_option('wcj_order_number_prefix');
delete_site_option('wcj_order_number_prefix');
delete_option('wcj_order_number_date_prefix');
delete_site_option('wcj_order_number_date_prefix');
delete_option('wcj_order_number_suffix');
delete_site_option('wcj_order_number_suffix');
delete_option('wcj_order_number_date_suffix');
delete_site_option('wcj_order_number_date_suffix');
delete_option('wpla_use_amazon_order_number');
delete_site_option('wpla_use_amazon_order_number');
delete_option('woocommerce_feature_custom_order_tables_enabled');
delete_site_option('woocommerce_feature_custom_order_tables_enabled');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_site_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('parcelpanel_update_setting');
delete_site_transient('parcelpanel_update_setting');
delete_transient('parcelpanel_installing');
delete_site_transient('parcelpanel_installing');

// Clear Cron Jobs
wp_clear_scheduled_hook('importer_scheduled_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_parcelpanel_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_parcelpanel_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_parcelpanel_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_parcelpanel_sync_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_attachment_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_attachment_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_attachment_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_attachment_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'parcelpanel_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'parcelpanel_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'parcelpanel_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'parcelpanel_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'parcelpanel_live_chat_enabled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'parcelpanel_live_chat_enabled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'parcelpanel_live_chat_enabled_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'parcelpanel_live_chat_enabled_at' ) );

