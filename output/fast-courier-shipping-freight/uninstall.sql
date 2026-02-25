-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fast_courier_checkout_mode', 'fast_courier_hpos_enabled', 'is_fc_enabled', 'woocommerce_pickup_location_settings', 'client_id', 'client_secret');
DELETE FROM wp_options WHERE option_name LIKE '%access_token';
DELETE FROM wp_options WHERE option_name LIKE '%merchant_details';
DELETE FROM wp_options WHERE option_name LIKE '%resync_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fc_height', 'fc_width', 'fc_length', 'fc_weight', 'fc_is_individual', 'fc_package_type', 'fc_location_type', 'fc_location', 'fc_atl', 'fc_status', 'fc_is_reprocessable', 'fc_order_quote', 'fc_collection_date', 'fc_multiple_quotes', 'fc_customer_status', 'fc_tracking_url', 'fc_order_invoice', 'fc_order_label', 'fc_order_additional_docs', 'fc_order_doc_prefix', 'fc_fail_reason', 'fc_consignment_number', 'fc_last_synced');
DELETE FROM wp_usermeta WHERE meta_key IN ('fc_height', 'fc_width', 'fc_length', 'fc_weight', 'fc_is_individual', 'fc_package_type', 'fc_location_type', 'fc_location', 'fc_atl', 'fc_status', 'fc_is_reprocessable', 'fc_order_quote', 'fc_collection_date', 'fc_multiple_quotes', 'fc_customer_status', 'fc_tracking_url', 'fc_order_invoice', 'fc_order_label', 'fc_order_additional_docs', 'fc_order_doc_prefix', 'fc_fail_reason', 'fc_consignment_number', 'fc_last_synced');
DELETE FROM wp_termmeta WHERE meta_key IN ('fc_height', 'fc_width', 'fc_length', 'fc_weight', 'fc_is_individual', 'fc_package_type', 'fc_location_type', 'fc_location', 'fc_atl', 'fc_status', 'fc_is_reprocessable', 'fc_order_quote', 'fc_collection_date', 'fc_multiple_quotes', 'fc_customer_status', 'fc_tracking_url', 'fc_order_invoice', 'fc_order_label', 'fc_order_additional_docs', 'fc_order_doc_prefix', 'fc_fail_reason', 'fc_consignment_number', 'fc_last_synced');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fc_height', 'fc_width', 'fc_length', 'fc_weight', 'fc_is_individual', 'fc_package_type', 'fc_location_type', 'fc_location', 'fc_atl', 'fc_status', 'fc_is_reprocessable', 'fc_order_quote', 'fc_collection_date', 'fc_multiple_quotes', 'fc_customer_status', 'fc_tracking_url', 'fc_order_invoice', 'fc_order_label', 'fc_order_additional_docs', 'fc_order_doc_prefix', 'fc_fail_reason', 'fc_consignment_number', 'fc_last_synced');

