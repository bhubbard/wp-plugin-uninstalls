<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wetail_shipping_api_key');
delete_site_option('wetail_shipping_api_key');
delete_option('wetail_shipping_manual_order_validation');
delete_site_option('wetail_shipping_manual_order_validation');
delete_option('wetail_shipping_ignore_product_dimension_if_not_given');
delete_site_option('wetail_shipping_ignore_product_dimension_if_not_given');
delete_option('wetail_shipping_create_labels');
delete_site_option('wetail_shipping_create_labels');
delete_option('wetail_shipping_book_pickup_manually');
delete_site_option('wetail_shipping_book_pickup_manually');
delete_option('wetail_shipping_has_multiple_senders');
delete_site_option('wetail_shipping_has_multiple_senders');
delete_option('wetail_shipping_enable_manual_shipping_service_selection_override');
delete_site_option('wetail_shipping_enable_manual_shipping_service_selection_override');
delete_option('wetail_shipping_print_pdfs_on_status');
delete_site_option('wetail_shipping_print_pdfs_on_status');
delete_option('wetail_shipping_returns_url');
delete_site_option('wetail_shipping_returns_url');
delete_option('wetail_shipping_return_carrier_service');
delete_site_option('wetail_shipping_return_carrier_service');
delete_option('wetail_shipping_wse_to_wetail_shipping_options_migrated');
delete_site_option('wetail_shipping_wse_to_wetail_shipping_options_migrated');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('wetail_shipping_template_weight');
delete_site_option('wetail_shipping_template_weight');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_order_status_set_sync_cb_hook');

