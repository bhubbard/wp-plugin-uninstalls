-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_key', 'api_secret', 'richpanel_woo_analytics');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name', '_wc_shipment_tracking_items', 'wf_canadapost_shipment_source', '_wccf_checkout', '_customer_ip_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name', '_wc_shipment_tracking_items', 'wf_canadapost_shipment_source', '_wccf_checkout', '_customer_ip_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name', '_wc_shipment_tracking_items', 'wf_canadapost_shipment_source', '_wccf_checkout', '_customer_ip_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name', '_wc_shipment_tracking_items', 'wf_canadapost_shipment_source', '_wccf_checkout', '_customer_ip_address');

