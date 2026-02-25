<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pacsoft_on_order_status');
delete_site_option('pacsoft_on_order_status');
delete_option('pacsoft_sync_with_options');
delete_site_option('pacsoft_sync_with_options');
delete_option('pacsoft_track_link_on_order_status');
delete_site_option('pacsoft_track_link_on_order_status');
delete_option('pacsoft_logfile_activated');
delete_site_option('pacsoft_logfile_activated');
delete_option('pacsoft_track_link_in_email');
delete_site_option('pacsoft_track_link_in_email');
delete_option('pacsoft_license_key');
delete_site_option('pacsoft_license_key');
delete_option('pacsoft_services');
delete_site_option('pacsoft_services');
delete_option('pacsoft_base_country');
delete_site_option('pacsoft_base_country');
delete_option('pacsoft_account_type');
delete_site_option('pacsoft_account_type');
delete_option('pacsoft_usern_unif');
delete_site_option('pacsoft_usern_unif');
delete_option('pacsoft_api_id');
delete_site_option('pacsoft_api_id');
delete_option('pacsoft_api_secret_id');
delete_site_option('pacsoft_api_secret_id');
delete_option('pacsoft_pass_unif');
delete_site_option('pacsoft_pass_unif');
delete_option('pacsoft_addon_sms');
delete_site_option('pacsoft_addon_sms');
delete_option('pacsoft_addon_enot');
delete_site_option('pacsoft_addon_enot');
delete_option('pacsoft_single_package_per_order');
delete_site_option('pacsoft_single_package_per_order');
delete_option('pacsoft_print_freight_label_per_item');
delete_site_option('pacsoft_print_freight_label_per_item');
delete_option('pacsoft_default_product_type');
delete_site_option('pacsoft_default_product_type');
delete_option('pacsoft_default_sender_quick_id');
delete_site_option('pacsoft_default_sender_quick_id');
delete_option('pacsoft_favorite');
delete_site_option('pacsoft_favorite');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('pacsoft_print_return_labels');
delete_site_option('pacsoft_print_return_labels');
delete_option('pacsoft_customs_declaration_document_number');
delete_site_option('pacsoft_customs_declaration_document_number');
delete_option('pacsoft_customs_import_export_type');
delete_site_option('pacsoft_customs_import_export_type');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('pacsoft_customs_other_unit');
delete_site_option('pacsoft_customs_other_unit');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('pacsoft_test_mode');
delete_site_option('pacsoft_test_mode');
delete_option('pacsoft_addon_notemail');
delete_site_option('pacsoft_addon_notemail');
delete_option('pacsoft_send_customs_declaration');
delete_site_option('pacsoft_send_customs_declaration');
delete_option('pacsoft_customs_declaration_cart_threshold');
delete_site_option('pacsoft_customs_declaration_cart_threshold');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('pacsoft_default_minimum_order_weight');
delete_site_option('pacsoft_default_minimum_order_weight');
delete_option('pacsoft_printer_type');
delete_site_option('pacsoft_printer_type');
delete_option('pacsoft_order_number_prefix');
delete_site_option('pacsoft_order_number_prefix');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pacsoft_order_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pacsoft_order_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pacsoft_order_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pacsoft_order_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'unifaun_customs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'unifaun_customs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'unifaun_customs_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'unifaun_customs_code' ) );

