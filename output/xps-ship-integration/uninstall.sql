-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_webship_api_key', 'last_request_received_from_webship_timestamp', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_webship-setup_notice', '_shipping_postcode', '_wc_shipment_tracking_items', '_webship_total_item_qty_already_shipped', '_tracking_provider', '_tracking_number', '_date_shipped');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_webship-setup_notice', '_shipping_postcode', '_wc_shipment_tracking_items', '_webship_total_item_qty_already_shipped', '_tracking_provider', '_tracking_number', '_date_shipped');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_webship-setup_notice', '_shipping_postcode', '_wc_shipment_tracking_items', '_webship_total_item_qty_already_shipped', '_tracking_provider', '_tracking_number', '_date_shipped');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_webship-setup_notice', '_shipping_postcode', '_wc_shipment_tracking_items', '_webship_total_item_qty_already_shipped', '_tracking_provider', '_tracking_number', '_date_shipped');

