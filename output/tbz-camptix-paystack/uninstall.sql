-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tix_receipt_email', 'tix_transaction_id', 'tix_payment_token', 'tix_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('tix_receipt_email', 'tix_transaction_id', 'tix_payment_token', 'tix_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('tix_receipt_email', 'tix_transaction_id', 'tix_payment_token', 'tix_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tix_receipt_email', 'tix_transaction_id', 'tix_payment_token', 'tix_payment_method');

