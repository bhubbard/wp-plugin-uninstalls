-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_payment_meta', '_edd_sl_is_renewal');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_payment_meta', '_edd_sl_is_renewal');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_payment_meta', '_edd_sl_is_renewal');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_payment_meta', '_edd_sl_is_renewal');

