-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pagseguro_internacional_wc_transaction_data', '_pagseguro_internacional_wc_transaction_id', '_transaction_id', '_virtual');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pagseguro_internacional_wc_transaction_data', '_pagseguro_internacional_wc_transaction_id', '_transaction_id', '_virtual');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pagseguro_internacional_wc_transaction_data', '_pagseguro_internacional_wc_transaction_id', '_transaction_id', '_virtual');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pagseguro_internacional_wc_transaction_data', '_pagseguro_internacional_wc_transaction_id', '_transaction_id', '_virtual');

