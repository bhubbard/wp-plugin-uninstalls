-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('request_id', 'checkout_request_id', 'mpesa_transaction_time', 'sender_msisdn', 'sender_first_name', 'sender_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('request_id', 'checkout_request_id', 'mpesa_transaction_time', 'sender_msisdn', 'sender_first_name', 'sender_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('request_id', 'checkout_request_id', 'mpesa_transaction_time', 'sender_msisdn', 'sender_first_name', 'sender_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('request_id', 'checkout_request_id', 'mpesa_transaction_time', 'sender_msisdn', 'sender_first_name', 'sender_last_name');

