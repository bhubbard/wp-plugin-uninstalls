<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcl_consolidate_rightpress_columns');
delete_site_option('wpcl_consolidate_rightpress_columns');
delete_option('wpcl_order_partial_refunds');
delete_site_option('wpcl_order_partial_refunds');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('wpcl_export_pdf_pagesize');
delete_site_option('wpcl_export_pdf_pagesize');
delete_option('wpcl_export_pdf_orientation');
delete_site_option('wpcl_export_pdf_orientation');
delete_option('wpcl_column_order_index');
delete_site_option('wpcl_column_order_index');
delete_option('wpcl_column_order_direction');
delete_site_option('wpcl_column_order_direction');
delete_option('wpcl_state_save');
delete_site_option('wpcl_state_save');
delete_option('wpcl_export_pdf_sku');
delete_site_option('wpcl_export_pdf_sku');
delete_option('wpcl_email_seperator');
delete_site_option('wpcl_email_seperator');
delete_option('wpcl_order_status_select');
delete_site_option('wpcl_order_status_select');
delete_option('wpcl_add_admin_shortcut');
delete_site_option('wpcl_add_admin_shortcut');
delete_option('wpcl_order_number');
delete_site_option('wpcl_order_number');
delete_option('wpcl_order_date');
delete_site_option('wpcl_order_date');
delete_option('wpcl_billing_first_name');
delete_site_option('wpcl_billing_first_name');
delete_option('wpcl_billing_last_name');
delete_site_option('wpcl_billing_last_name');
delete_option('wpcl_billing_email');
delete_site_option('wpcl_billing_email');
delete_option('wpcl_billing_phone');
delete_site_option('wpcl_billing_phone');
delete_option('wpcl_billing_address_1');
delete_site_option('wpcl_billing_address_1');
delete_option('wpcl_billing_address_2');
delete_site_option('wpcl_billing_address_2');
delete_option('wpcl_billing_city');
delete_site_option('wpcl_billing_city');
delete_option('wpcl_billing_state');
delete_site_option('wpcl_billing_state');
delete_option('wpcl_billing_postalcode');
delete_site_option('wpcl_billing_postalcode');
delete_option('wpcl_billing_country');
delete_site_option('wpcl_billing_country');
delete_option('wpcl_shipping_first_name');
delete_site_option('wpcl_shipping_first_name');
delete_option('wpcl_shipping_last_name');
delete_site_option('wpcl_shipping_last_name');
delete_option('wpcl_shipping_address_1');
delete_site_option('wpcl_shipping_address_1');
delete_option('wpcl_shipping_address_2');
delete_site_option('wpcl_shipping_address_2');
delete_option('wpcl_shipping_city');
delete_site_option('wpcl_shipping_city');
delete_option('wpcl_shipping_state');
delete_site_option('wpcl_shipping_state');
delete_option('wpcl_shipping_postalcode');
delete_site_option('wpcl_shipping_postalcode');
delete_option('wpcl_shipping_country');
delete_site_option('wpcl_shipping_country');
delete_option('wpcl_customer_message');
delete_site_option('wpcl_customer_message');
delete_option('wpcl_customer_id');
delete_site_option('wpcl_customer_id');
delete_option('wpcl_order_status');
delete_site_option('wpcl_order_status');
delete_option('wpcl_order_payment');
delete_site_option('wpcl_order_payment');
delete_option('wpcl_order_qty');
delete_site_option('wpcl_order_qty');
delete_option('wpcl_customer_ID');
delete_site_option('wpcl_customer_ID');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'key' ) );

