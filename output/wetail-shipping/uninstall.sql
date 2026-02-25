-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wetail_shipping_api_key', 'wetail_shipping_manual_order_validation', 'wetail_shipping_ignore_product_dimension_if_not_given', 'wetail_shipping_create_labels', 'wetail_shipping_book_pickup_manually', 'wetail_shipping_has_multiple_senders', 'wetail_shipping_enable_manual_shipping_service_selection_override', 'wetail_shipping_print_pdfs_on_status', 'wetail_shipping_returns_url', 'wetail_shipping_return_carrier_service', 'wetail_shipping_wse_to_wetail_shipping_options_migrated', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'wetail_shipping_template_weight');

