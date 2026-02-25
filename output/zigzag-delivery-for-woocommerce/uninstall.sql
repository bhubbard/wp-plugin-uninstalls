-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_city');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zigzag_delivery_number', 'zigzag_delivery_status', 'zigzag_delivery_notes', 'zigzag_sds', 'zigzag_delivery_type', 'zigzag_delivery_line', 'zigzag_delivery_date_created', 'zigzag_pickup_branch');
DELETE FROM wp_usermeta WHERE meta_key IN ('zigzag_delivery_number', 'zigzag_delivery_status', 'zigzag_delivery_notes', 'zigzag_sds', 'zigzag_delivery_type', 'zigzag_delivery_line', 'zigzag_delivery_date_created', 'zigzag_pickup_branch');
DELETE FROM wp_termmeta WHERE meta_key IN ('zigzag_delivery_number', 'zigzag_delivery_status', 'zigzag_delivery_notes', 'zigzag_sds', 'zigzag_delivery_type', 'zigzag_delivery_line', 'zigzag_delivery_date_created', 'zigzag_pickup_branch');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zigzag_delivery_number', 'zigzag_delivery_status', 'zigzag_delivery_notes', 'zigzag_sds', 'zigzag_delivery_type', 'zigzag_delivery_line', 'zigzag_delivery_date_created', 'zigzag_pickup_branch');

