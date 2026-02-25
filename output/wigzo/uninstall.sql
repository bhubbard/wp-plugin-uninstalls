-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wigzo_org_token', 'wigzo_pwa', 'wigzo_pwaData', 'wigzo_challenge', 'wigzo_orgId', 'wigzo_pwaFilesPath', 'wigzo_browserpush', 'wigzo_viahttps', 'wigzo_onsitepush', 'wigzo_token', 'wigzo_oauth', 'wigzo_client_id', 'wigzo_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'wigzo_order_update_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', 'billing_phone');

