-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coinname', 'amount', 'userid', 'country', 'tx', 'confirmed', 'details', 'mp_payment_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('coinname', 'amount', 'userid', 'country', 'tx', 'confirmed', 'details', 'mp_payment_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('coinname', 'amount', 'userid', 'country', 'tx', 'confirmed', 'details', 'mp_payment_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coinname', 'amount', 'userid', 'country', 'tx', 'confirmed', 'details', 'mp_payment_info');

