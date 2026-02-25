<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wuunder_checkout_force_update_fields');
delete_site_option('wuunder_checkout_force_update_fields');
delete_option('wuunder_use_custom_backup');
delete_site_option('wuunder_use_custom_backup');
delete_option('wuunder_plugin_status');
delete_site_option('wuunder_plugin_status');
delete_option('wuunder_plugin_environment');
delete_site_option('wuunder_plugin_environment');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');
delete_option('wuunder_enable_shipping_calc_disabled');
delete_site_option('wuunder_enable_shipping_calc_disabled');
delete_option('wuunder_plugin_version');
delete_site_option('wuunder_plugin_version');
delete_option('wuunder_checkout_status');
delete_site_option('wuunder_checkout_status');
delete_option('wuunder_api_environment');
delete_site_option('wuunder_api_environment');
delete_option('wuunder_api_key');
delete_site_option('wuunder_api_key');
delete_option('wuunder_test_api_key');
delete_site_option('wuunder_test_api_key');
delete_option('wuunder_webshop_id');
delete_site_option('wuunder_webshop_id');
delete_option('wuunder_test_webshop_id');
delete_site_option('wuunder_test_webshop_id');
delete_option('wuunder_btn_css');
delete_site_option('wuunder_btn_css');
delete_option('wuunder_btn_text');
delete_site_option('wuunder_btn_text');
delete_option('wuunder_checkout_description');
delete_site_option('wuunder_checkout_description');
delete_option('wuunder_custom_backup_price');
delete_site_option('wuunder_custom_backup_price');
delete_option('wuunder_setup_success');
delete_site_option('wuunder_setup_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wuunder_checkout_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wuunder_checkout_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wuunder_checkout_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wuunder_checkout_token' ) );

