<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_custom_payment_gateways_version');
delete_site_option('alg_wc_custom_payment_gateways_version');
delete_option('alg_wc_custom_payment_gateways_enabled');
delete_site_option('alg_wc_custom_payment_gateways_enabled');
delete_option('alg_wc_cpg_input_fields_enabled');
delete_site_option('alg_wc_cpg_input_fields_enabled');
delete_option('alg_wc_cpg_fees_enabled');
delete_site_option('alg_wc_cpg_fees_enabled');
delete_option('alg_wc_cpg_fees_cart_total_taxes');
delete_site_option('alg_wc_cpg_fees_cart_total_taxes');
delete_option('alg_wc_cpg_fees_cart_total_shipping');
delete_site_option('alg_wc_cpg_fees_cart_total_shipping');
delete_option('alg_wc_cpg_fees_cart_total_discounts');
delete_site_option('alg_wc_cpg_fees_cart_total_discounts');
delete_option('woocommerce_default_gateway');
delete_site_option('woocommerce_default_gateway');
delete_option('alg_wc_cpg_input_fields_woe_enabled');
delete_site_option('alg_wc_cpg_input_fields_woe_enabled');
delete_option('alg_wc_cpg_input_fields_woe_template');
delete_site_option('alg_wc_cpg_input_fields_woe_template');
delete_option('alg_wc_cpg_input_fields_woe_glue');
delete_site_option('alg_wc_cpg_input_fields_woe_glue');
delete_option('alg_wc_cpg_input_fields_add_to_emails');
delete_site_option('alg_wc_cpg_input_fields_add_to_emails');
delete_option('alg_wc_cpg_input_fields_add_to_emails_sent_to');
delete_site_option('alg_wc_cpg_input_fields_add_to_emails_sent_to');
delete_option('alg_wc_cpg_input_fields_add_to_emails_template_plain');
delete_site_option('alg_wc_cpg_input_fields_add_to_emails_template_plain');
delete_option('alg_wc_cpg_input_fields_add_to_emails_template');
delete_site_option('alg_wc_cpg_input_fields_add_to_emails_template');
delete_option('alg_wc_cpg_input_fields_add_to_order_details');
delete_site_option('alg_wc_cpg_input_fields_add_to_order_details');
delete_option('alg_wc_cpg_input_fields_add_to_order_details_template');
delete_site_option('alg_wc_cpg_input_fields_add_to_order_details_template');
delete_option('alg_wc_cpg_input_fields_add_order_note');
delete_site_option('alg_wc_cpg_input_fields_add_order_note');
delete_option('img_cpg_orders');
delete_site_option('img_cpg_orders');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_cpg_load_shipping_method_instances');
delete_site_option('alg_wc_cpg_load_shipping_method_instances');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_custom_payment_gateways_admin_title_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_cpg_input_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_cpg_input_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_cpg_input_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_cpg_input_fields' ) );

