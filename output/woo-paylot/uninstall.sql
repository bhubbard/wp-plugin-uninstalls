-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_Paylot_txn_ref', '_transaction_id', '_paylot_txn_ref');
DELETE FROM wp_usermeta WHERE meta_key IN ('_Paylot_txn_ref', '_transaction_id', '_paylot_txn_ref');
DELETE FROM wp_termmeta WHERE meta_key IN ('_Paylot_txn_ref', '_transaction_id', '_paylot_txn_ref');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_Paylot_txn_ref', '_transaction_id', '_paylot_txn_ref');

