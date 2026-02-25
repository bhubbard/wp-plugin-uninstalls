-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('idpay_payment_error', 'idpay_transaction_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('idpay_payment_error', 'idpay_transaction_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('idpay_payment_error', 'idpay_transaction_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('idpay_payment_error', 'idpay_transaction_status');

