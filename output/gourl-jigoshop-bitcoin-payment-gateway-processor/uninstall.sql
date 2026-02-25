-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('currency', 'coinname', 'amount', 'amountusd', 'userid', 'country', 'tx', 'confirmed', 'details');
DELETE FROM wp_usermeta WHERE meta_key IN ('currency', 'coinname', 'amount', 'amountusd', 'userid', 'country', 'tx', 'confirmed', 'details');
DELETE FROM wp_termmeta WHERE meta_key IN ('currency', 'coinname', 'amount', 'amountusd', 'userid', 'country', 'tx', 'confirmed', 'details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('currency', 'coinname', 'amount', 'amountusd', 'userid', 'country', 'tx', 'confirmed', 'details');

