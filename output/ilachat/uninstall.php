<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ilachat_bot');
delete_site_option('ilachat_bot');
delete_option('ilachat_token');
delete_site_option('ilachat_token');
delete_option('ilachat_widget_code');
delete_site_option('ilachat_widget_code');
delete_option('ilachat_widget_code_fast');
delete_site_option('ilachat_widget_code_fast');
delete_option('ilachat_widget_code_optimize');
delete_site_option('ilachat_widget_code_optimize');
delete_option('ilachat_widget_display_mode');
delete_site_option('ilachat_widget_display_mode');
delete_option('ilachat_iframe_url');
delete_site_option('ilachat_iframe_url');
delete_option('ilachat_enable_show_widget');
delete_site_option('ilachat_enable_show_widget');
delete_option('ilachat_enable_lead_collection');
delete_site_option('ilachat_enable_lead_collection');
delete_option('ilachat_last_updated');
delete_site_option('ilachat_last_updated');
delete_option('ilachat_woocommerce_integration_enabled');
delete_site_option('ilachat_woocommerce_integration_enabled');
delete_option('ilachat_woocommerce_order_tracking_enabled');
delete_site_option('ilachat_woocommerce_order_tracking_enabled');
delete_option('ilachat_woocommerce_order_check_phone_enabled');
delete_site_option('ilachat_woocommerce_order_check_phone_enabled');
delete_option('ilachat_woocommerce_order_check_email_enabled');
delete_site_option('ilachat_woocommerce_order_check_email_enabled');
delete_option('ilachat_woocommerce_sync_categories');
delete_site_option('ilachat_woocommerce_sync_categories');
delete_option('ilachat_woocommerce_order_allowed_data');
delete_site_option('ilachat_woocommerce_order_allowed_data');
delete_option('ilachat_woocommerce_order_statuses_description');
delete_site_option('ilachat_woocommerce_order_statuses_description');
delete_option('ilachat_woocommerce_order_special_note');
delete_site_option('ilachat_woocommerce_order_special_note');
delete_option('ilachat_woocommerce_sync_out_of_stock');
delete_site_option('ilachat_woocommerce_sync_out_of_stock');
delete_option('ilachat_woocommerce_product_sync_enabled');
delete_site_option('ilachat_woocommerce_product_sync_enabled');
delete_option('ilachat_woocommerce_secret_key');
delete_site_option('ilachat_woocommerce_secret_key');

// Delete Transients
delete_transient('ilachat_connect_clicked');
delete_site_transient('ilachat_connect_clicked');
delete_transient('ilachat_sync_variable_links_scheduled');
delete_site_transient('ilachat_sync_variable_links_scheduled');
delete_transient('ilachat_product_limit_reached');
delete_site_transient('ilachat_product_limit_reached');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'digits_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ilachat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ilachat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ilachat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ilachat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ilachat_deleted_due_to_oos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ilachat_deleted_due_to_oos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ilachat_deleted_due_to_oos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ilachat_deleted_due_to_oos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ilachat_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ilachat_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ilachat_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ilachat_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ilachat_sync_on_save' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ilachat_sync_on_save' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ilachat_sync_on_save' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ilachat_sync_on_save' ) );

