-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dagcoin_invoice_id_cancelled', '_dagcoin_invoice_id', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dagcoin_invoice_id_cancelled', '_dagcoin_invoice_id', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dagcoin_invoice_id_cancelled', '_dagcoin_invoice_id', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dagcoin_invoice_id_cancelled', '_dagcoin_invoice_id', '_payment_method');

