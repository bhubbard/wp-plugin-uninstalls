-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_ignored_sap_sku', 'wc_pick_code_for_sap', 'wc_ignored_world_sap_sku', 'wc_shipment_email_status', 'wc_shipment_email_content', 'wc_shipment_email_header', 'wc_shipment_email_subject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipped_by_sap', 'send_email', '_total_refund_order_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipped_by_sap', 'send_email', '_total_refund_order_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipped_by_sap', 'send_email', '_total_refund_order_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipped_by_sap', 'send_email', '_total_refund_order_items');

