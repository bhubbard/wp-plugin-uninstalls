-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpat_store_user_id', 'bpat_store_token', 'bpat_redirect_combined_orders_pickup', 'bpat_warehouse_webhook_domains', 'bpat_warehouse_webhook_shielding_enabled', 'bpat_warehouse_webhook_strict_mode', 'bpat_version_index', 'woocommerce_myaccount_page_id', 'bpat_warehouse_webhook_detection');
DELETE FROM wp_options WHERE option_name LIKE 'bpat_failed_form_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bpat_bookpod_send_to_bookpod', '_bpat_bookpod_book_id', '_bpat_epub_price', '_wp_attachment_image_alt', '_bpat_bookpod_book_valid', '_bpat_bookpod_book_error', '_bpat_bookpod_order_no', '_bpat_bookpod_order_status', '_bpat_bookpod_order_error', '_bpat_is_set', '_bpat_bookpod_shipping_method', '_bpat_pickup_point_id', 'bpat_pickup_point_id', '_bpat_street_name', '_bpat_building_number', '_bpat_apartment_number', '_bpat_floor', '_bpat_address_notes', '_bpat_delivery_notes', '_bookpod_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bpat_bookpod_send_to_bookpod', '_bpat_bookpod_book_id', '_bpat_epub_price', '_wp_attachment_image_alt', '_bpat_bookpod_book_valid', '_bpat_bookpod_book_error', '_bpat_bookpod_order_no', '_bpat_bookpod_order_status', '_bpat_bookpod_order_error', '_bpat_is_set', '_bpat_bookpod_shipping_method', '_bpat_pickup_point_id', 'bpat_pickup_point_id', '_bpat_street_name', '_bpat_building_number', '_bpat_apartment_number', '_bpat_floor', '_bpat_address_notes', '_bpat_delivery_notes', '_bookpod_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bpat_bookpod_send_to_bookpod', '_bpat_bookpod_book_id', '_bpat_epub_price', '_wp_attachment_image_alt', '_bpat_bookpod_book_valid', '_bpat_bookpod_book_error', '_bpat_bookpod_order_no', '_bpat_bookpod_order_status', '_bpat_bookpod_order_error', '_bpat_is_set', '_bpat_bookpod_shipping_method', '_bpat_pickup_point_id', 'bpat_pickup_point_id', '_bpat_street_name', '_bpat_building_number', '_bpat_apartment_number', '_bpat_floor', '_bpat_address_notes', '_bpat_delivery_notes', '_bookpod_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bpat_bookpod_send_to_bookpod', '_bpat_bookpod_book_id', '_bpat_epub_price', '_wp_attachment_image_alt', '_bpat_bookpod_book_valid', '_bpat_bookpod_book_error', '_bpat_bookpod_order_no', '_bpat_bookpod_order_status', '_bpat_bookpod_order_error', '_bpat_is_set', '_bpat_bookpod_shipping_method', '_bpat_pickup_point_id', 'bpat_pickup_point_id', '_bpat_street_name', '_bpat_building_number', '_bpat_apartment_number', '_bpat_floor', '_bpat_address_notes', '_bpat_delivery_notes', '_bookpod_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

