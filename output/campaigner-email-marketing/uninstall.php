<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('campemma_auth_status');
delete_site_option('campemma_auth_status');
delete_option('campemma_back_in_stock_button_type');
delete_site_option('campemma_back_in_stock_button_type');
delete_option('campemma_back_in_stock_is_activate');
delete_site_option('campemma_back_in_stock_is_activate');
delete_option('campemma_account_id');
delete_site_option('campemma_account_id');
delete_option('campemma_consumer_key');
delete_site_option('campemma_consumer_key');
delete_option('campemma_consumer_secret');
delete_site_option('campemma_consumer_secret');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('campemma_notify_me_title');
delete_site_option('campemma_notify_me_title');
delete_option('campemma_notify_me_placeholder');
delete_site_option('campemma_notify_me_placeholder');
delete_option('campemma_notify_me_button_label');
delete_site_option('campemma_notify_me_button_label');
delete_option('campemma_notify_me_button_color');
delete_site_option('campemma_notify_me_button_color');
delete_option('campemma_notify_me_button_text_color');
delete_site_option('campemma_notify_me_button_text_color');
delete_option('campemma_account_connected');
delete_site_option('campemma_account_connected');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('classic-editor-allow-users');
delete_site_option('classic-editor-allow-users');
delete_option('campemma_preferences');
delete_site_option('campemma_preferences');
delete_option('campemma_username');
delete_site_option('campemma_username');
delete_option('campemma_password');
delete_site_option('campemma_password');
delete_option('campemma_cmp_user_jwt');
delete_site_option('campemma_cmp_user_jwt');
delete_option('campemma_accounts_data');
delete_site_option('campemma_accounts_data');
delete_option('campemma_user_type');
delete_site_option('campemma_user_type');
delete_option('campemma_store_id');
delete_site_option('campemma_store_id');
delete_option('campemma_store_name');
delete_site_option('campemma_store_name');
delete_option('campemma_account_name');
delete_site_option('campemma_account_name');

// Delete Transients
delete_transient('campemma_auth_url');
delete_site_transient('campemma_auth_url');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_campemma_wc_auth_state_%', '_site_transient_campemma_wc_auth_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_previous_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_previous_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_previous_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_previous_stock_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_previous_stock_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_previous_stock_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_previous_stock_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_previous_stock_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'classic-editor-settings' ) );

