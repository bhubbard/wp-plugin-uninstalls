<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conv_active_domain');
delete_site_option('conv_active_domain');
delete_option('ee_options');
delete_site_option('ee_options');
delete_option('ee_prod_mapped_cats');
delete_site_option('ee_prod_mapped_cats');
delete_option('ee_prod_mapped_attrs');
delete_site_option('ee_prod_mapped_attrs');
delete_option('ee_auto_update_id');
delete_site_option('ee_auto_update_id');
delete_option('ee_api_data');
delete_site_option('ee_api_data');
delete_option('ee_additional_data');
delete_site_option('ee_additional_data');
delete_option('conv_selected_events');
delete_site_option('conv_selected_events');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('ee_msg_nofifications');
delete_site_option('ee_msg_nofifications');
delete_option('conv_localhost_error');
delete_site_option('conv_localhost_error');
delete_option('ee_remarketing_snippets');
delete_site_option('ee_remarketing_snippets');
delete_option('ee_customer_gmail');
delete_site_option('ee_customer_gmail');
delete_option('ee_customer_msmail');
delete_site_option('ee_customer_msmail');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('ee_customer_fbmail');
delete_site_option('ee_customer_fbmail');
delete_option('ee_customer_gtm_gmail');
delete_site_option('ee_customer_gtm_gmail');
delete_option('ee_conv_plugin_version');
delete_site_option('ee_conv_plugin_version');
delete_option('conv_ut_cleanup');
delete_site_option('conv_ut_cleanup');
delete_option('ee_ut');
delete_site_option('ee_ut');
delete_option('ee_convnotice');
delete_site_option('ee_convnotice');
delete_option('microsoft_ads_conversions_tracking');
delete_site_option('microsoft_ads_conversions_tracking');
delete_option('ee_prod_response');
delete_site_option('ee_prod_response');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('ee_conv_total_synced_product_count');
delete_site_option('ee_conv_total_synced_product_count');
delete_option('ads_tracking_id');
delete_site_option('ads_tracking_id');
delete_option('conv_gads_currency');
delete_site_option('conv_gads_currency');
delete_option('google_ads_conversion_tracking');
delete_site_option('google_ads_conversion_tracking');
delete_option('ee_conversio_send_to');
delete_site_option('ee_conversio_send_to');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');

// Delete Transients
delete_transient('_conversios_activation_redirect');
delete_site_transient('_conversios_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('tvc_add_cron_interval_for_product_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tracked' ) );

