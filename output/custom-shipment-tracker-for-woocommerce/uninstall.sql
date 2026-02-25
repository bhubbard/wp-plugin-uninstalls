-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipment_status', '_show_shipment_dates');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipment_status', '_show_shipment_dates');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipment_status', '_show_shipment_dates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipment_status', '_show_shipment_dates');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipment_date_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipment_date_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipment_date_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipment_date_%';

