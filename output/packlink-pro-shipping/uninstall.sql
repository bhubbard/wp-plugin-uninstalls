-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PACKLINK_VERSION', 'active_sitewide_plugins', 'links_updated_date_format', 'PACKLINK_DATABASE_VERSION', 'wc_settings_tab_packlink_api_key', 'packlink-pro-success-messages', 'packlink-pro-error-messages', 'packlink-pro-messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_packlink_draft_reference', 'billing_phone', '_packlink_shipment_reference', '_packlink_shipment_status', '_packlink_shipment_status_update_time', '_packlink_carrier_tracking_code', '_packlink_carrier_tracking_url', '_packlink_shipment_price', '_packlink_shipment_labels', '_packlink_label_printed', '_packlink_drop_off_point_id', '_packlink_send_draft_task_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_packlink_draft_reference', 'billing_phone', '_packlink_shipment_reference', '_packlink_shipment_status', '_packlink_shipment_status_update_time', '_packlink_carrier_tracking_code', '_packlink_carrier_tracking_url', '_packlink_shipment_price', '_packlink_shipment_labels', '_packlink_label_printed', '_packlink_drop_off_point_id', '_packlink_send_draft_task_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_packlink_draft_reference', 'billing_phone', '_packlink_shipment_reference', '_packlink_shipment_status', '_packlink_shipment_status_update_time', '_packlink_carrier_tracking_code', '_packlink_carrier_tracking_url', '_packlink_shipment_price', '_packlink_shipment_labels', '_packlink_label_printed', '_packlink_drop_off_point_id', '_packlink_send_draft_task_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_packlink_draft_reference', 'billing_phone', '_packlink_shipment_reference', '_packlink_shipment_status', '_packlink_shipment_status_update_time', '_packlink_carrier_tracking_code', '_packlink_carrier_tracking_url', '_packlink_shipment_price', '_packlink_shipment_labels', '_packlink_label_printed', '_packlink_drop_off_point_id', '_packlink_send_draft_task_id');

