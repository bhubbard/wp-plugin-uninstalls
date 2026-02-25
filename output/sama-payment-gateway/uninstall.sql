-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gsama_transaction_id', 'gsama_transaction_price', 'gsama_transaction_fee', 'gsama_transaction_total_price', 'gsama_transaction_status', 'gsama_transaction_client_id', 'gsama_reference_number', 'gsama_payment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('gsama_transaction_id', 'gsama_transaction_price', 'gsama_transaction_fee', 'gsama_transaction_total_price', 'gsama_transaction_status', 'gsama_transaction_client_id', 'gsama_reference_number', 'gsama_payment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('gsama_transaction_id', 'gsama_transaction_price', 'gsama_transaction_fee', 'gsama_transaction_total_price', 'gsama_transaction_status', 'gsama_transaction_client_id', 'gsama_reference_number', 'gsama_payment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gsama_transaction_id', 'gsama_transaction_price', 'gsama_transaction_fee', 'gsama_transaction_total_price', 'gsama_transaction_status', 'gsama_transaction_client_id', 'gsama_reference_number', 'gsama_payment_id');

