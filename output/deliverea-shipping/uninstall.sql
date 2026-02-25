-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcdeliverea_api_user', 'wcdeliverea_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_deliverea_shipping_dlvr_ref', '_deliverea_shipping_date', '_deliverea_shipping_carrier_ref', '_deliverea_status', '_deliverea_collection_dlvr_ref', '_deliverea_collection_carrier_ref');
DELETE FROM wp_usermeta WHERE meta_key IN ('_deliverea_shipping_dlvr_ref', '_deliverea_shipping_date', '_deliverea_shipping_carrier_ref', '_deliverea_status', '_deliverea_collection_dlvr_ref', '_deliverea_collection_carrier_ref');
DELETE FROM wp_termmeta WHERE meta_key IN ('_deliverea_shipping_dlvr_ref', '_deliverea_shipping_date', '_deliverea_shipping_carrier_ref', '_deliverea_status', '_deliverea_collection_dlvr_ref', '_deliverea_collection_carrier_ref');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_deliverea_shipping_dlvr_ref', '_deliverea_shipping_date', '_deliverea_shipping_carrier_ref', '_deliverea_status', '_deliverea_collection_dlvr_ref', '_deliverea_collection_carrier_ref');

