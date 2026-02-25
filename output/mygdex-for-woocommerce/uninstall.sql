-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_gdex_settings', 'gdex_admin_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('consignment_number', 'parcel_type', 'content', 'pieces', 'weight', 'order_id', 'name', 'address1', 'address2', 'postcode', 'city', 'state', 'country', 'mobile', 'rate', 'invoice_number', 'total', 'consignment_status', 'service_type', 'pick_up_date', 'pick_up_time', 'pick_up_transportation', 'pick_up_trolley_required', 'pick_up_remark');
DELETE FROM wp_usermeta WHERE meta_key IN ('consignment_number', 'parcel_type', 'content', 'pieces', 'weight', 'order_id', 'name', 'address1', 'address2', 'postcode', 'city', 'state', 'country', 'mobile', 'rate', 'invoice_number', 'total', 'consignment_status', 'service_type', 'pick_up_date', 'pick_up_time', 'pick_up_transportation', 'pick_up_trolley_required', 'pick_up_remark');
DELETE FROM wp_termmeta WHERE meta_key IN ('consignment_number', 'parcel_type', 'content', 'pieces', 'weight', 'order_id', 'name', 'address1', 'address2', 'postcode', 'city', 'state', 'country', 'mobile', 'rate', 'invoice_number', 'total', 'consignment_status', 'service_type', 'pick_up_date', 'pick_up_time', 'pick_up_transportation', 'pick_up_trolley_required', 'pick_up_remark');
DELETE FROM wp_commentmeta WHERE meta_key IN ('consignment_number', 'parcel_type', 'content', 'pieces', 'weight', 'order_id', 'name', 'address1', 'address2', 'postcode', 'city', 'state', 'country', 'mobile', 'rate', 'invoice_number', 'total', 'consignment_status', 'service_type', 'pick_up_date', 'pick_up_time', 'pick_up_transportation', 'pick_up_trolley_required', 'pick_up_remark');

