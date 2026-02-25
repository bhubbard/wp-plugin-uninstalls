-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zonosch_private_test_api_key', 'zonosch_generated_public_api_key', 'zonosch_private_api_key', 'zonosch_debug_mode', 'zonosch_registered_webhook_routes', 'zonosch_store_id', 'zonosch_currency_selector', 'zonosch_testing_mode', 'zonosch_domestic_checkout_button_selector', 'zonosch_second_checkout_button_toggle', 'zonosch_international_checkout_button_text', 'zonosch_international_checkout_button_css_style', 'zonosch_rate_limit', 'zonosch_attributes', 'zonosch_currency_code', 'zonosch_amount', 'zonosch_country', 'zonosch_item_description', 'zonosch_hs_code', 'zonosch_image', 'zonosch_length', 'zonosch_width', 'zonosch_height', 'zonosch_weight', 'zonosch_name', 'zonosch_product_id', 'zonosch_quantity', 'zonosch_sku', 'zonosch_length_unit_measure', 'zonosch_weight_unit_measure', 'zonosch_order_id', 'zonosch_order_success', 'zonosch_order_error', 'zonosch_field_errors');

