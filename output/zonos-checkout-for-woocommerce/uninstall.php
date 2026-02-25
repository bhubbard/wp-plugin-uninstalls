<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zonosch_private_test_api_key');
delete_site_option('zonosch_private_test_api_key');
delete_option('zonosch_generated_public_api_key');
delete_site_option('zonosch_generated_public_api_key');
delete_option('zonosch_private_api_key');
delete_site_option('zonosch_private_api_key');
delete_option('zonosch_debug_mode');
delete_site_option('zonosch_debug_mode');
delete_option('zonosch_registered_webhook_routes');
delete_site_option('zonosch_registered_webhook_routes');
delete_option('zonosch_store_id');
delete_site_option('zonosch_store_id');
delete_option('zonosch_currency_selector');
delete_site_option('zonosch_currency_selector');
delete_option('zonosch_testing_mode');
delete_site_option('zonosch_testing_mode');
delete_option('zonosch_domestic_checkout_button_selector');
delete_site_option('zonosch_domestic_checkout_button_selector');
delete_option('zonosch_second_checkout_button_toggle');
delete_site_option('zonosch_second_checkout_button_toggle');
delete_option('zonosch_international_checkout_button_text');
delete_site_option('zonosch_international_checkout_button_text');
delete_option('zonosch_international_checkout_button_css_style');
delete_site_option('zonosch_international_checkout_button_css_style');
delete_option('zonosch_rate_limit');
delete_site_option('zonosch_rate_limit');
delete_option('zonosch_attributes');
delete_site_option('zonosch_attributes');
delete_option('zonosch_currency_code');
delete_site_option('zonosch_currency_code');
delete_option('zonosch_amount');
delete_site_option('zonosch_amount');
delete_option('zonosch_country');
delete_site_option('zonosch_country');
delete_option('zonosch_item_description');
delete_site_option('zonosch_item_description');
delete_option('zonosch_hs_code');
delete_site_option('zonosch_hs_code');
delete_option('zonosch_image');
delete_site_option('zonosch_image');
delete_option('zonosch_length');
delete_site_option('zonosch_length');
delete_option('zonosch_width');
delete_site_option('zonosch_width');
delete_option('zonosch_height');
delete_site_option('zonosch_height');
delete_option('zonosch_weight');
delete_site_option('zonosch_weight');
delete_option('zonosch_name');
delete_site_option('zonosch_name');
delete_option('zonosch_product_id');
delete_site_option('zonosch_product_id');
delete_option('zonosch_quantity');
delete_site_option('zonosch_quantity');
delete_option('zonosch_sku');
delete_site_option('zonosch_sku');
delete_option('zonosch_length_unit_measure');
delete_site_option('zonosch_length_unit_measure');
delete_option('zonosch_weight_unit_measure');
delete_site_option('zonosch_weight_unit_measure');
delete_option('zonosch_order_id');
delete_site_option('zonosch_order_id');

// Delete Transients
delete_transient('zonosch_order_success');
delete_site_transient('zonosch_order_success');
delete_transient('zonosch_order_error');
delete_site_transient('zonosch_order_error');
delete_transient('zonosch_field_errors');
delete_site_transient('zonosch_field_errors');

