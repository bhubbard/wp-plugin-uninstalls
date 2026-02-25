-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icarry_shipping', 'icarry_module_version', 'icarry_language_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipment_id_POST_META_ID', 'shipment_awb_POST_META_ID', 'shipment_courier_id_POST_META_ID', 'shipment_type_POST_META_ID', 'shipment_mode_POST_META_ID', 'shipment_status_POST_META_ID', 'shipment_status_id_POST_META_ID', 'shipment_added_date_POST_META_ID', 'shipment_picked_date_POST_META_ID', 'shipment_delivered_date_POST_META_ID', 'shipment_pickup_id_POST_META_ID', 'icarry_shipment_action_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipment_id_POST_META_ID', 'shipment_awb_POST_META_ID', 'shipment_courier_id_POST_META_ID', 'shipment_type_POST_META_ID', 'shipment_mode_POST_META_ID', 'shipment_status_POST_META_ID', 'shipment_status_id_POST_META_ID', 'shipment_added_date_POST_META_ID', 'shipment_picked_date_POST_META_ID', 'shipment_delivered_date_POST_META_ID', 'shipment_pickup_id_POST_META_ID', 'icarry_shipment_action_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipment_id_POST_META_ID', 'shipment_awb_POST_META_ID', 'shipment_courier_id_POST_META_ID', 'shipment_type_POST_META_ID', 'shipment_mode_POST_META_ID', 'shipment_status_POST_META_ID', 'shipment_status_id_POST_META_ID', 'shipment_added_date_POST_META_ID', 'shipment_picked_date_POST_META_ID', 'shipment_delivered_date_POST_META_ID', 'shipment_pickup_id_POST_META_ID', 'icarry_shipment_action_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipment_id_POST_META_ID', 'shipment_awb_POST_META_ID', 'shipment_courier_id_POST_META_ID', 'shipment_type_POST_META_ID', 'shipment_mode_POST_META_ID', 'shipment_status_POST_META_ID', 'shipment_status_id_POST_META_ID', 'shipment_added_date_POST_META_ID', 'shipment_picked_date_POST_META_ID', 'shipment_delivered_date_POST_META_ID', 'shipment_pickup_id_POST_META_ID', 'icarry_shipment_action_message');

