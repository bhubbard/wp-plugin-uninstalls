<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_shiptastic_enable_debug_mode');
delete_site_option('woocommerce_shiptastic_enable_debug_mode');
delete_option('woocommerce_shiptastic_db_version');
delete_site_option('woocommerce_shiptastic_db_version');
delete_option('woocommerce_shiptastic_default_shipping_provider');
delete_site_option('woocommerce_shiptastic_default_shipping_provider');
delete_option('woocommerce_shiptastic_shipper_address_country');
delete_site_option('woocommerce_shiptastic_shipper_address_country');
delete_option('woocommerce_shiptastic_return_address_country');
delete_site_option('woocommerce_shiptastic_return_address_country');
delete_option('woocommerce_shiptastic_return_reasons');
delete_site_option('woocommerce_shiptastic_return_reasons');
delete_option('woocommerce_shiptastic_return_address_address_1');
delete_site_option('woocommerce_shiptastic_return_address_address_1');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_shiptastic_version');
delete_site_option('woocommerce_shiptastic_version');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_shiptastic_upload_dir_suffix');
delete_site_option('woocommerce_shiptastic_upload_dir_suffix');
delete_option('woocommerce_shipping_debug_mode');
delete_site_option('woocommerce_shipping_debug_mode');
delete_option('woocommerce_store_country');
delete_site_option('woocommerce_store_country');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tmp_result' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_result' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_shiptastic_packaging_reports');
delete_site_option('woocommerce_shiptastic_packaging_reports');
delete_option('woocommerce_shiptastic_packaging_reports_running');
delete_site_option('woocommerce_shiptastic_packaging_reports_running');
delete_option('woocommerce_shiptastic_enable_auto_packing');
delete_site_option('woocommerce_shiptastic_enable_auto_packing');
delete_option('woocommerce_shiptastic_packing_balance_weights');
delete_site_option('woocommerce_shiptastic_packing_balance_weights');
delete_option('woocommerce_shiptastic_packing_group_by_shipping_class');
delete_site_option('woocommerce_shiptastic_packing_group_by_shipping_class');
delete_option('woocommerce_shiptastic_packing_inner_buffer_type');
delete_site_option('woocommerce_shiptastic_packing_inner_buffer_type');
delete_option('woocommerce_shiptastic_packing_inner_percentage_buffer');
delete_site_option('woocommerce_shiptastic_packing_inner_percentage_buffer');
delete_option('woocommerce_shiptastic_packing_inner_fixed_buffer');
delete_site_option('woocommerce_shiptastic_packing_inner_fixed_buffer');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');
delete_option('woocommerce_shiptastic_has_encryption_error');
delete_site_option('woocommerce_shiptastic_has_encryption_error');
delete_option('woocommerce_shiptastic_contact_phone');
delete_site_option('woocommerce_shiptastic_contact_phone');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('_wc_shiptastic_setup_wizard_redirect');
delete_site_transient('_wc_shiptastic_setup_wizard_redirect');
delete_transient('woocommerce_shiptastic_packaging_report_counts');
delete_site_transient('woocommerce_shiptastic_packaging_report_counts');

